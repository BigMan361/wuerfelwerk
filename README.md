# Würfelwerk

Block-Puzzle fürs iPhone: Formen aufs 8×8-Raster ziehen, volle Reihen und Spalten räumen, Combos sammeln.

- `web/` – das Spiel als Web-App (auch zum „Zum Home-Bildschirm hinzufügen“ geeignet)
- `ios/` – kleines iOS-Projekt, das das Spiel im Vollbild zeigt
- `.github/workflows/ios.yml` – baut bei jedem Push automatisch eine unsignierte `Wuerfelwerk.ipa`
  und legt sie unter **Releases** ab

## Auf dem iPhone installieren (Sideload)
1. Unter **Releases** die neueste `Wuerfelwerk.ipa` herunterladen (landet in der Dateien-App).
2. In **AltStore** oder **SideStore** auf „+“ tippen und die IPA auswählen.
   Die App wird dabei mit deiner Apple-ID signiert.
3. Mit kostenloser Apple-ID muss die App alle 7 Tage aufgefrischt werden.
