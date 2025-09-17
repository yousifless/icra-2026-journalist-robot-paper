# ICRA 2026 Paper Compilation Script (PowerShell)
# Usage: .\compile.ps1

param(
    [switch]$Clean = $false,
    [switch]$Open = $false,
    [switch]$NonInteractive = $false
)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    ICRA 2026 Paper Compilation Script" -ForegroundColor Cyan  
Write-Host "============================================" -ForegroundColor Cyan
Write-Host

# Check if pdflatex is available
try {
    $null = Get-Command pdflatex -ErrorAction Stop
    Write-Host "pdflatex found" -ForegroundColor Green
} catch {
    Write-Host "ERROR: pdflatex not found in PATH" -ForegroundColor Red
    Write-Host
    Write-Host "Please install LaTeX first:" -ForegroundColor Yellow
    Write-Host "1. MiKTeX: https://miktex.org/download" -ForegroundColor Yellow
    Write-Host "2. TeX Live: https://www.tug.org/texlive/" -ForegroundColor Yellow
    Write-Host "3. Or use Overleaf online: https://www.overleaf.com/" -ForegroundColor Yellow
    Write-Host
    exit 1
}

Write-Host "Compiling ICRA 2026 Paper..." -ForegroundColor Blue
Write-Host

# First compilation
Write-Host "[1/3] Running pdflatex (first pass)..." -ForegroundColor Yellow
$result1 = Start-Process -FilePath "pdflatex" -ArgumentList "-interaction=nonstopmode", "icra2026_paper.tex" -Wait -PassThru -NoNewWindow

if ($result1.ExitCode -ne 0) {
    Write-Host "First compilation failed! Check icra2026_paper.log for errors." -ForegroundColor Red
    exit 1
}

# Bibliography compilation (if .bib file exists)
$bibFiles = Get-ChildItem -Name "*.bib" -ErrorAction SilentlyContinue
if ($bibFiles) {
    Write-Host "[2/3] Running bibtex..." -ForegroundColor Yellow
    $resultBib = Start-Process -FilePath "bibtex" -ArgumentList "icra2026_paper" -Wait -PassThru -NoNewWindow
    
    if ($resultBib.ExitCode -eq 0) {
        Write-Host "[2.5/3] Running pdflatex (second pass)..." -ForegroundColor Yellow
        $result2 = Start-Process -FilePath "pdflatex" -ArgumentList "-interaction=nonstopmode", "icra2026_paper.tex" -Wait -PassThru -NoNewWindow
    }
} else {
    Write-Host "[2/3] No bibliography file found, skipping bibtex..." -ForegroundColor Gray
}

# Final compilation
Write-Host "[3/3] Running pdflatex (final pass)..." -ForegroundColor Yellow
$resultFinal = Start-Process -FilePath "pdflatex" -ArgumentList "-interaction=nonstopmode", "icra2026_paper.tex" -Wait -PassThru -NoNewWindow

if ($resultFinal.ExitCode -eq 0) {
    Write-Host
    Write-Host "SUCCESS! Paper compiled successfully!" -ForegroundColor Green
    Write-Host "Output: icra2026_paper.pdf" -ForegroundColor Green
    Write-Host
    
    # Check if PDF was created and show file size
    if (Test-Path "icra2026_paper.pdf") {
        $fileInfo = Get-Item "icra2026_paper.pdf"
        $fileSizeKB = [math]::Round($fileInfo.Length / 1KB, 2)
        Write-Host "File size: $fileSizeKB KB" -ForegroundColor Cyan
        Write-Host "Created: $($fileInfo.LastWriteTime)" -ForegroundColor Cyan
        Write-Host
        
        # Open PDF if requested or ask user
        if ($Open) {
            Start-Process "icra2026_paper.pdf"
        } elseif (-not $NonInteractive) {
            $openChoice = Read-Host "Open PDF now? (y/n)"
            if ($openChoice -eq "y" -or $openChoice -eq "Y") {
                Start-Process "icra2026_paper.pdf"
            }
        }
    }
} else {
    Write-Host
    Write-Host "COMPILATION FAILED!" -ForegroundColor Red
    Write-Host "Check icra2026_paper.log for detailed error information" -ForegroundColor Yellow
    Write-Host
}

# Clean up auxiliary files
if ($Clean) {
    $auxFiles = @("*.aux", "*.log", "*.out", "*.bbl", "*.blg", "*.toc", "*.lof", "*.lot")
    foreach ($pattern in $auxFiles) {
        Remove-Item $pattern -ErrorAction SilentlyContinue
    }
    Write-Host "Auxiliary files cleaned up" -ForegroundColor Green
} elseif (-not $NonInteractive) {
    $cleanChoice = Read-Host "Clean up auxiliary files (.aux, .log, .out)? (y/n)"
    if ($cleanChoice -eq "y" -or $cleanChoice -eq "Y") {
        $auxFiles = @("*.aux", "*.log", "*.out", "*.bbl", "*.blg", "*.toc", "*.lof", "*.lot")
        foreach ($pattern in $auxFiles) {
            Remove-Item $pattern -ErrorAction SilentlyContinue
        }
        Write-Host "Auxiliary files cleaned up" -ForegroundColor Green
    }
}

Write-Host
Write-Host "Compilation complete!" -ForegroundColor Cyan
if (-not $NonInteractive -and -not $Clean -and -not $Open) {
    Read-Host "Press Enter to exit"
}

