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

    Vorlesungsskript\_src  -->  ...\pdwp-online\dirk-ostwald.github.io

Eine Junction ist ein Verweis, keine Kopie: Änderungen in der Quelle sind hier
sofort wirksam. Da die Kapitel damit unter ihren gewohnten relativen Pfaden
liegen, funktionieren Abbildungen (`./_figures/...`), `Referenzen.bib` und
`_texheader.tex` unverändert.

## Einrichtung (einmalig)

1. **Nextcloud-Ausschluss** – sonst könnte der Client die über die Junction
   sichtbaren Inhalte ein zweites Mal synchronisieren. Die Datei
   `.sync-exclude.lst` in diesem Verzeichnis schließt `_src`, `_book` und
   `.quarto` bereits lokal aus. Zusätzlich (zur Sicherheit) global:
   Nextcloud-Client → *Einstellungen* → *Allgemein* → *Ignorierte Dateien
   bearbeiten* → Muster `_src` hinzufügen.
2. `Setup.cmd` per Doppelklick ausführen. Legt `_src` an; Administratorrechte
   sind nicht erforderlich. (Auf diesem Rechner ist `_src` bereits angelegt.)

## Rendern

`Rendern.cmd` per Doppelklick, oder in diesem Verzeichnis:

    quarto render --to pdf

Ergebnis: `_book\Mathematische-Grundlagen-Vorlesungsskript.pdf`

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

- Querverweise funktionieren innerhalb der Kapitel 101–107 vollständig; die
  einzigen kapitelübergreifenden Verweise auf 108/109 stehen in `100-…qmd`,
  das bewusst nicht eingebunden ist.
- Das Skript nutzt dieselben LaTeX-Makros wie das Buch, da
  `_src/_texheader.tex` mit eingebunden wird. `_titelseite.tex` wird danach
  geladen und ersetzt nur Titelseite und Fußzeile.
