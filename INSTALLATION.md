# LaTeX Installation Guide for ICRA Paper Compilation

## LaTeX Installation Options for Windows

### Option 1: MiKTeX (Recommended)
**Download:** https://miktex.org/download
**Size:** ~200MB (basic) to ~4GB (complete)

1. Download MiKTeX installer
2. Run installer as Administrator
3. Choose "Install MiKTeX for all users" 
4. Select "Complete MiKTeX" for full package support
5. Add to PATH during installation

**After Installation:**
```powershell
# Test installation
pdflatex --version

# Compile paper
cd icra_paper_template
pdflatex icra2026_paper.tex
```

### Option 2: TeX Live
**Download:** https://www.tug.org/texlive/acquire-netinst.html
**Size:** ~4GB (full installation)

1. Download install-tl-windows.exe
2. Run as Administrator
3. Follow installation wizard
4. Ensure PATH is updated

### Option 3: Online LaTeX (Overleaf)
**Website:** https://www.overleaf.com/
**Pros:** No local installation required
**Cons:** Requires internet connection

1. Create account on Overleaf
2. Upload icra2026_paper.tex
3. Compile online

## Compilation Commands

### Basic Compilation
```bash
pdflatex icra2026_paper.tex
```

### Full Compilation with Bibliography
```bash
pdflatex icra2026_paper.tex
bibtex icra2026_paper
pdflatex icra2026_paper.tex
pdflatex icra2026_paper.tex
```

### Compilation Script (compile.bat)
```batch
@echo off
echo Compiling ICRA 2026 Paper...
pdflatex icra2026_paper.tex
if %ERRORLEVEL% EQU 0 (
    echo ✅ Compilation successful! 
    echo PDF created: icra2026_paper.pdf
) else (
    echo ❌ Compilation failed! Check LaTeX log for errors.
)
pause
```

## Required Packages
The paper template uses these LaTeX packages:
- ieeeconf (included in template)
- amsmath, amssymb, amsfonts
- graphicx
- cite
- booktabs
- url
- xcolor

All packages are included in standard LaTeX distributions.

## Troubleshooting

### Common Issues:
1. **"pdflatex not recognized"**: LaTeX not installed or not in PATH
2. **Missing packages**: Run `tlmgr install <package>` (TeX Live) or let MiKTeX auto-install
3. **Font errors**: Update LaTeX distribution
4. **Permission errors**: Run command prompt as Administrator

### Verification:
```powershell
# Check LaTeX installation
pdflatex --version

# Check if paper compiles
pdflatex icra2026_paper.tex

# Verify PDF was created
Get-ChildItem *.pdf
```