# Mathematische Grundlagen · Wintersemester 2026/27

Vorlesungsmaterialien von **Prof. Dr. Dirk Ostwald**, Institut für Psychologie,
Otto-von-Guericke-Universität Magdeburg. Die Veranstaltung vermittelt mathematische
Grundlagen für das Psychologiestudium, von Sprache und Logik bis zur Integralrechnung.

## Materialien lesen

Die Folien liegen als fertige PDFs vor. Zum Lesen ist keine Softwareinstallation
außer einem PDF-Betrachter erforderlich.

| Thema | Folien | Quellen und Abbildungen |
| --- | --- | --- |
| Formalia | [PDF](0-Formalia/Formalia.pdf) | [Ordner](0-Formalia/) |
| 1 · Sprache und Logik | [PDF](1-Sprache-und-Logik/1-Sprache-und-Logik.pdf) | [Ordner](1-Sprache-und-Logik/) |
| 2 · Mengen | [PDF](2-Mengen/2-Mengen.pdf) | [Ordner](2-Mengen/) |
| 3 · Summen, Produkte, Potenzen | [PDF](3-Summen-Produkte-Potenzen/3-Summen-Produkte-Potenzen.pdf) | [Ordner](3-Summen-Produkte-Potenzen/) |
| 4 · Funktionen | [PDF](4-Funktionen/4-Funktionen.pdf) | [Ordner](4-Funktionen/) |
| 5 · Folgen, Grenzwerte, Stetigkeit | [PDF](5-Folgen-Grenzwerte-Stetigkeit/5-Folgen-Grenzwerte-Stetigkeit.pdf) | [Ordner](5-Folgen-Grenzwerte-Stetigkeit/) |
| 6 · Differenzialrechnung | [PDF](6-Differenzialrechnung/6-Differenzialrechnung.pdf) | [Ordner](6-Differenzialrechnung/) |
| 7 · Integralrechnung | [PDF](7-Integralrechnung/7-Integralrechnung.pdf) | [Ordner](7-Integralrechnung/) |

Das begleitende **Vorlesungsskript** wird im Ordner [Skript](Skript/) aus den
Kapiteln 101–107 des Lehrbuchs *Probabilistische Datenwissenschaft für die
Psychologie (PDWP)* erstellt. Diese Kapitel werden aus einem separaten lokalen
Quellprojekt eingebunden und sind nicht in diesem Repository enthalten.
Das erzeugte Skript-PDF wird ebenfalls nicht versioniert.
Einrichtung und Ausgabe sind in der [Skript-Anleitung](Skript/README.md) beschrieben.

## Aufbau

- `0-Formalia/` und `1-…/` bis `7-…/` enthalten die Folien als `.qmd` und `.pdf`,
  lokale LaTeX-Header sowie Literaturverzeichnisse im BibTeX-Format.
- Die jeweiligen Abbildungsordner enthalten Grafiken und teilweise bearbeitbare
  PowerPoint-Quelldateien.
- `Skript/` enthält das eigenständige Quarto-Buchprojekt und Windows-Hilfsskripte.

## Folien selbst erstellen

Benötigt werden Quarto, R mit den Paketen `knitr`, `rmarkdown` und `latex2exp`
sowie eine LaTeX-Installation mit Beamer und den in den Headern eingebundenen
Paketen. Einzelne R-Codeblöcke erzeugen Abbildungen beim Rendern neu.

Die R-Pakete lassen sich in einer R-Konsole installieren:

```r
install.packages(c("knitr", "rmarkdown", "latex2exp"))
```

Für die Folien gibt es kein gemeinsames Quarto-Projekt im Repository-Hauptordner.
Das jeweilige Dokument wird aus seinem Themenordner gerendert, beispielsweise:

```powershell
cd 1-Sprache-und-Logik
quarto render 1-Sprache-und-Logik.qmd --to beamer
```

Die PDF-Ausgabe liegt neben der Quelldatei und ersetzt dort die vorhandene PDF.
Für Formalia lautet der entsprechende Aufruf im Ordner `0-Formalia`:

```powershell
quarto render Formalia.qmd --to beamer
```

Die Folien-PDFs und Abbildungen werden bewusst mit Git versioniert. Temporäre
Render-Dateien, Caches und die extern eingebundenen Skriptquellen werden ignoriert.

## Korrekturen und Beiträge

Hinweise auf Fehler sind über die
[GitHub-Issues](https://github.com/dirk-ostwald/Mathematische-Grundlagen-26-27/issues)
willkommen. Bitte Thema, Foliennummer oder Abschnitt und einen konkreten
Korrekturvorschlag angeben. Hinweise zur Bearbeitung stehen in
[CONTRIBUTING.md](CONTRIBUTING.md).

## Lizenz und Quellenangabe

Die Lehrmaterialien sind entsprechend den vorhandenen Lizenzangaben unter
**Creative Commons Namensnennung 4.0 International (CC BY 4.0)** veröffentlicht.
Siehe [LICENSE.md](LICENSE.md). Gesonderte Quellen- und Rechteangaben bei
übernommenen Abbildungen oder anderen Fremdinhalten sind zu beachten.

Für einen Verweis auf diese Sammlung:

> Ostwald, D. (2026/27). *Mathematische Grundlagen: Vorlesungsmaterialien zum
> Wintersemester 2026/27*. Otto-von-Guericke-Universität Magdeburg.
> https://github.com/dirk-ostwald/Mathematische-Grundlagen-26-27

Bitte bei Bezug auf einen konkreten Bearbeitungsstand zusätzlich den Commit
angeben. Die Quellenangabe zum zugrunde liegenden PDWP-Lehrbuch steht in den
[Vorbemerkungen des Skripts](Skript/index.qmd).
