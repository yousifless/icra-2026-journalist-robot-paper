@echo off
echo ============================================
echo    ICRA 2026 Paper Compilation Script
echo ============================================
echo.

REM Check if pdflatex is available
where pdflatex >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ ERROR: pdflatex not found in PATH
    echo.
    echo Please install LaTeX first:
    echo 1. MiKTeX: https://miktex.org/download
    echo 2. TeX Live: https://www.tug.org/texlive/
    echo 3. Or use Overleaf online: https://www.overleaf.com/
    echo.
    pause
    exit /b 1
)

echo 🔄 Compiling ICRA 2026 Paper...
echo.

REM First compilation
echo [1/3] Running pdflatex (first pass)...
pdflatex -interaction=nonstopmode icra2026_paper.tex
if %ERRORLEVEL% NEQ 0 (
    echo ❌ First compilation failed! Check icra2026_paper.log for errors.
    pause
    exit /b 1
)

REM Bibliography compilation (if .bib file exists)
if exist *.bib (
    echo [2/3] Running bibtex...
    bibtex icra2026_paper
    
    echo [3/3] Running pdflatex (final pass)...
    pdflatex -interaction=nonstopmode icra2026_paper.tex
) else (
    echo [2/3] No bibliography file found, skipping bibtex...
)

REM Final compilation
echo [3/3] Running pdflatex (final pass)...
pdflatex -interaction=nonstopmode icra2026_paper.tex

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✅ SUCCESS! Paper compiled successfully!
    echo 📄 Output: icra2026_paper.pdf
    echo.
    
    REM Check if PDF was created and show file size
    if exist icra2026_paper.pdf (
        for %%I in (icra2026_paper.pdf) do echo 📊 File size: %%~zI bytes
        echo.
        
        REM Open PDF if desired
        set /p OPEN="🔍 Open PDF now? (y/n): "
        if /i "%OPEN%"=="y" start icra2026_paper.pdf
    )
) else (
    echo.
    echo ❌ COMPILATION FAILED!
    echo 📋 Check icra2026_paper.log for detailed error information
    echo.
)

REM Clean up auxiliary files (optional)
set /p CLEAN="🧹 Clean up auxiliary files (.aux, .log, .out)? (y/n): "
if /i "%CLEAN%"=="y" (
    del /q *.aux *.log *.out *.bbl *.blg *.toc *.lof *.lot 2>nul
    echo ✅ Auxiliary files cleaned up
)

echo.
pause

