param([string]$SourcePath = $env:PDWP_SOURCE)
$ErrorActionPreference = 'Stop'

function Test-Source([string]$Path) {
    return ((Test-Path -LiteralPath (Join-Path $Path '_part_1/101-Sprache-und-Logik.qmd')) -and
        (Test-Path -LiteralPath (Join-Path $Path 'Referenzen.bib')) -and
        (Test-Path -LiteralPath (Join-Path $Path '_texheader.tex')))
}

$link = Join-Path $PSScriptRoot '_src'
if (Test-Path -LiteralPath $link) {
    if (-not (Test-Source $link)) { throw 'Die vorhandene Verknuepfung _src enthaelt kein gueltiges PDWP-Projekt.' }
    Write-Host 'PDWP-Quellen sind bereits eingebunden.'
    exit 0
}
if (Get-Item -LiteralPath $link -Force -ErrorAction SilentlyContinue) {
    throw 'Die Verknuepfung _src ist defekt. Bitte die Verknuepfung entfernen und Setup erneut ausfuehren.'
}
if (-not $SourcePath) {
    $ancestor = Get-Item -LiteralPath $PSScriptRoot
    while ($null -ne $ancestor) {
        $candidate = Join-Path $ancestor.FullName 'pdwp-online/dirk-ostwald.github.io'
        if (Test-Source $candidate) { $SourcePath = $candidate; break }
        $ancestor = $ancestor.Parent
    }
}
if (-not $SourcePath) {
    throw 'PDWP-Projekt nicht gefunden. Aufruf: Setup.cmd -SourcePath "Pfad zum PDWP-Projekt" (oder PDWP_SOURCE setzen).'
}
$SourcePath = (Resolve-Path -LiteralPath $SourcePath).Path
if (-not (Test-Source $SourcePath)) { throw "Kein gueltiges PDWP-Projekt: $SourcePath" }
New-Item -ItemType Junction -Path $link -Target $SourcePath | Out-Null
Write-Host "PDWP-Quellen eingebunden: $SourcePath"
