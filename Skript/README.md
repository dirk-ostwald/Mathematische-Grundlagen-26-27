# Vorlesungsskript „Mathematische Grundlagen“

**[Vorlesungsskript als PDF öffnen oder herunterladen](_book/Skript-Mathematische-Grundlagen.pdf)**

Das Skript begleitet die Veranstaltung *Mathematische Grundlagen* von
Prof. Dr. Dirk Ostwald an der Otto-von-Guericke-Universität Magdeburg im
Wintersemester 2026/27.

Es enthält die Kapitel 101–107 des Lehrbuchs *Probabilistische Datenwissenschaft
für die Psychologie (PDWP)*:

- Sprache und Logik
- Mengen
- Summen, Produkte, Potenzen
- Funktionen
- Folgen, Grenzwerte, Stetigkeit
- Differenzialrechnung
- Integralrechnung

Die fertige PDF liegt im Ordner `_book/` und wird im Repository versioniert.
Die Kapitelquellen werden im separaten PDWP-Projekt gepflegt.

## Rendern auf einem anderen Rechner

Voraussetzungen: Quarto, R mit den Paketen des PDWP-Projekts (`renv.lock`)
und eine LaTeX-Installation mit XeLaTeX. Die Kapitelquellen muessen als
separates PDWP-Projekt auf dem Rechner vorhanden sein.

Unter Windows einmal `Setup.cmd` in diesem Ordner ausfuehren. Das Skript
sucht in den uebergeordneten Ordnern nach
`pdwp-online/dirk-ostwald.github.io` und erstellt die lokale Junction `_src`.
Bei anderer Ordnerstruktur: `Setup.cmd -SourcePath "D:\Pfad\zum\PDWP-Projekt"`.
Alternativ kann die Umgebungsvariable `PDWP_SOURCE` gesetzt werden.
Es werden keine Kapitel kopiert; die Konfiguration enthaelt keine
rechnerspezifischen absoluten Pfade. Auf jedem Rechner wird `_src` neu angelegt.
Bei Nextcloud `_src` als ignoriertes Verzeichnis konfigurieren, damit die
verlinkten Quellen nicht nochmals synchronisiert werden.

Danach in diesem Ordner `quarto render` ausfuehren. `Rendern.cmd` erledigt
bei fehlendem `_src` auch die automatische Einrichtung.
Unter Linux/macOS stattdessen einen lokalen symbolischen Link erstellen:
`ln -s /pfad/zum/PDWP-Projekt _src`, anschliessend `quarto render`.
Die `.Rprofile` aktiviert die R-Umgebung des verlinkten PDWP-Projekts.

Angaben zur zugrunde liegenden Publikation und zur Lizenz CC BY 4.0 stehen in
den [Vorbemerkungen](index.qmd). Die zugehörigen Vorlesungsfolien sind über die
[Repository-Übersicht](../README.md) zugänglich.
