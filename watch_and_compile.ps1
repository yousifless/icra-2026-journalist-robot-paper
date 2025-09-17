# Auto-compile watcher for icra2026_paper.tex
param(
    [string]$File = "icra2026_paper.tex",
    [int]$DebounceMs = 400,
    [switch]$CleanOnSuccess = $false,
    [switch]$OpenOnSuccess = $false
)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "   Watching $File for changes (auto-compile)" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

if (-not (Test-Path $File)) {
    Write-Host "❌ File not found: $File" -ForegroundColor Red
    exit 1
}

$dir = Split-Path -Parent $File
$name = Split-Path -Leaf $File

# Default to current directory if no parent path was provided
if ([string]::IsNullOrWhiteSpace($dir)) {
    $dir = "."
}

$resolvedDir = Resolve-Path $dir -ErrorAction SilentlyContinue
if (-not $resolvedDir) {
    $resolvedDir = Get-Location
}

$fsw = New-Object System.IO.FileSystemWatcher
$fsw.Path = $resolvedDir.Path
$fsw.Filter = $name
$fsw.IncludeSubdirectories = $false
$fsw.NotifyFilter = [IO.NotifyFilters]'LastWrite, FileName, Size'

$timer = New-Object Timers.Timer
$timer.Interval = $DebounceMs
$timer.AutoReset = $false

$action = {
    $timer.Stop()
    $timer.Start()
}

$compileAction = {
    try {
        Write-Host "\n🔄 Change detected → compiling..." -ForegroundColor Yellow
        & powershell -NoProfile -ExecutionPolicy Bypass -File "./compile.ps1" -NonInteractive:$$true -Clean:$CleanOnSuccess -Open:$OpenOnSuccess | Out-Host
    } catch {
        Write-Host "❌ Compile failed: $($_.Exception.Message)" -ForegroundColor Red
    }
}

$onChanged = Register-ObjectEvent $fsw Changed -Action $action
$onCreated = Register-ObjectEvent $fsw Created -Action $action
$onRenamed = Register-ObjectEvent $fsw Renamed -Action $action

$null = Register-ObjectEvent -InputObject $timer -EventName Elapsed -Action $compileAction

Write-Host "👀 Watching. Press Ctrl+C to stop." -ForegroundColor Gray
while ($true) { Start-Sleep -Seconds 1 }


