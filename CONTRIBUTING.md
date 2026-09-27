# Hinweise zu Korrekturen und Beiträgen

Fehlerberichte und Verbesserungsvorschläge können als
[Issue](https://github.com/dirk-ostwald/Mathematische-Grundlagen-26-27/issues)
oder Pull Request eingereicht werden.

## Einen Fehler melden

Bitte den Themenordner, die Foliennummer oder den Abschnitt nennen und den
Fehler beschreiben. Bei mathematischen Korrekturen helfen eine kurze Begründung
und gegebenenfalls eine Literaturquelle. Bei Render-Problemen bitte den Aufruf,
die Fehlermeldung sowie Betriebssystem, Quarto-, R- und LaTeX-Version angeben.

## Materialien bearbeiten

1. Die passende `.qmd`-Quelldatei im Themenordner bearbeiten.
2. Bestehende mathematische Notation, Sprache und Gestaltung beibehalten.
3. Das betroffene Dokument aus seinem Themenordner rendern, wie in der
   [README](README.md) beschrieben.
4. Die erzeugte PDF auf Formeln, Umbrüche, Abbildungen, Verweise und Literatur
   prüfen. Geänderte Quellen und die zugehörigen Folien-PDFs gemeinsam einreichen.
5. Im Pull Request die fachliche Änderung und die erfolgte Prüfung kurz erläutern.

Die PowerPoint-Dateien in den Abbildungsordnern dienen als bearbeitbare Quellen.
Bei Änderungen an solchen Grafiken auch die eingebundene PDF-Ausgabe aktualisieren.
Neue Fremdinhalte benötigen nachvollziehbare Quellen- und Lizenzangaben.

## Skript und Literatur

Die Kapitel des Skripts stammen aus einem separaten PDWP-Quellprojekt.
Inhaltliche Änderungen dieser Kapitel gehören dorthin. Die lokale Einbindung
`Skript/_src` ist eine Verzeichnisverknüpfung, keine unabhängige Kopie.
Änderungen darin wirken unmittelbar auf das Quellprojekt.

In diesem Repository liegen die Skriptkonfiguration, Titelseite, Vorbemerkungen
und das fertige Skript unter `Skript/_book/Skript-Mathematische-Grundlagen.pdf`.
Bei Aktualisierungen des Skripts auch die geprüfte PDF in Git aufnehmen.
Die Verknüpfung und Quarto-Caches bleiben außerhalb der Versionsverwaltung.

Nach Änderungen an der zugehörigen Zotero-Bibliothek die Projektbibliografie im
Format **Better BibTeX** neu exportieren und die bestehende `.bib`-Datei ersetzen.
Hintergrund-Export aktivieren. „Notizen exportieren“, „Dateien exportieren“,
„Anmerkungen einschließen“, „abgekürzte Zeitschriftentitel verwenden“ und
„Halte aktuell“ deaktiviert lassen. Anschließend die im Projekt verwendeten
Zitierschlüssel prüfen.
