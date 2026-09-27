# Vorlesungsskript "Mathematische Grundlagen"

Eigenständiges Quarto-Buchprojekt, das die Kapitel 101–107 aus `_part_1` des
Buchprojekts

    C:\Users\dirko\Nextcloud\Home\pdwp-online\dirk-ostwald.github.io

als PDF rendert. **Die .qmd-Dateien werden nicht dupliziert.** Einzige Quelle
der Inhalte bleibt das obige Projekt.

## Funktionsweise

Quarto verlangt, dass alle Kapiteldateien innerhalb des Projektverzeichnisses
liegen. Deshalb wird das Quellprojekt über eine Windows-Verzeichnis-Junction
`_src` in dieses Verzeichnis eingeblendet:

    Skript\_src  -->  ...\pdwp-online\dirk-ostwald.github.io

Eine Junction ist ein Verweis, keine Kopie: Änderungen in der Quelle sind hier
sofort wirksam. Da die Kapitel damit unter ihren gewohnten relativen Pfaden
liegen, funktionieren Abbildungen (`./_figures/...`), `Referenzen.bib` und
`_texheader.tex` unverändert.

## Einrichtung (einmalig)

Vorausgesetzt werden Quarto und eine LaTeX-Installation mit XeLaTeX sowie den
Paketen und Schriften, die `_src/_texheader.tex` einbindet. In `_quarto.yml`
ist `latex-tinytex: false` gesetzt. Das Skript nutzt damit die vorhandene
LaTeX-Installation. Für den konfigurierten CSL-Stil ist Internetzugang nötig.

Die Skriptkapitel und ihre Ressourcen müssen separat lokal vorliegen.
`Setup.cmd` lädt sie nicht herunter. Das Quellprojekt ist
[PDWP](https://github.com/dirk-ostwald/dirk-ostwald.github.io/tree/gh-pages).
Benötigt werden insbesondere `_part_1`, die zugehörigen Abbildungen,
`Referenzen.qmd`, `Referenzen.bib` und `_texheader.tex`.

1. **Nextcloud-Ausschluss** – sonst könnte der Client die über die Junction
   sichtbaren Inhalte ein zweites Mal synchronisieren. Die Datei
   `.sync-exclude.lst` in diesem Verzeichnis schließt `_src`, `_book` und
   `.quarto` bereits lokal aus. Zusätzlich (zur Sicherheit) global:
   Nextcloud-Client → *Einstellungen* → *Allgemein* → *Ignorierte Dateien
   bearbeiten* → Muster `_src` hinzufügen.
2. In `Setup.cmd` den Wert `QUELLE` auf den eigenen lokalen Pfad zum
   PDWP-Quellprojekt anpassen. Der voreingestellte Pfad ist rechnerspezifisch.
3. `Setup.cmd` unter Windows per Doppelklick ausführen. Das Skript legt `_src`
   als Junction an. Administratorrechte sind dafür nicht erforderlich.

Die `.cmd`-Hilfsskripte sind für Windows vorgesehen. Auf anderen Betriebssystemen
muss `_src` als entsprechender Verzeichnislink eingerichtet werden.

## Rendern

`Rendern.cmd` per Doppelklick, oder in diesem Verzeichnis:

    quarto render --to pdf

Ergebnis: `_book\Skript-Mathematische-Grundlagen.pdf`

Der Dateiname wird in `_quarto.yml` über `book: output-file:` festgelegt.
Die Ausgabe unter `_book/` ist lokal und wird nicht mit Git versioniert.

## Kapitelauswahl ändern

Die Auswahl steht ausschließlich in `_quarto.yml` unter `book: chapters:`.
Weitere Kapitel werden durch eine Zeile der Form

    - _src/_part_1/108-Vektoren.qmd

ergänzt; Kapitel aus anderen Teilen analog über `_src/_part_3/...` usw.

## Dateien

| Datei             | Zweck                                                        |
|-------------------|--------------------------------------------------------------|
| `_quarto.yml`     | Projektkonfiguration, Kapitelauswahl, PDF-Format             |
| `index.qmd`       | Vorbemerkungen (Vorwort des Skripts)                         |
| `_titelseite.tex` | Eigene Titelseite und Fußzeile, überschreibt `_texheader.tex` |
| `Setup.cmd`       | Legt die Junction `_src` an                                  |
| `.sync-exclude.lst` | Nimmt `_src`, `_book`, `.quarto` von der Nextcloud-Synchronisation aus |
| `Rendern.cmd`     | Rendert das PDF                                              |

## Hinweise

- Nach Änderungen an den externen Kapiteln Querverweise und Literaturangaben
  im erzeugten PDF prüfen. Kapitel außerhalb der Auswahl werden nicht gerendert.
- Das Skript nutzt dieselben LaTeX-Makros wie das Buch, da
  `_src/_texheader.tex` mit eingebunden wird. `_titelseite.tex` wird danach
  geladen und ersetzt nur Titelseite und Fußzeile.
