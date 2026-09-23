<!--
============================================================
MODÈLE — Journal des versions (CHANGELOG)
Format inspiré de « Keep a Changelog ». À placer à la racine du dépôt.
Règles :
  - La version la plus RÉCENTE est en HAUT.
  - Chaque version : un numéro [MAJEUR.MINEUR.CORRECTIF] et une date AAAA-MM-JJ.
  - Rubriques possibles : Ajouté, Modifié, Corrigé, Supprimé.
  - Reliez les corrections aux anomalies (ex. « voir A-002 ») du fichier ANOMALIES.md.
  - Ajoutez une nouvelle version à CHAQUE évolution ou lot de corrections.
============================================================
-->

# Journal des versions — HellMetz Mobile

## [Non publié]
<!-- Ce que vous êtes en train de préparer, pas encore livré. -->
### Ajouté
- <en cours…>
- Réflexion sur l'ajout d'un bouton pour écouter un extrait audio du concert

## [1.0.0] - 2026-09-23
### Ajouté
- Écran d'accueil : liste des concerts affichée avec `ListView.builder`.
- Carte de présentation d'un concert (titre en gras, artiste, date).
- Navigation vers l'écran de détail avec passage du concert sélectionné.
- Image d'illustration à gauche de chaque carte de concert (widget `Row` + `Image.asset`)
- Champ `lieu` dans le modèle `Concert`, affiché sur l'écran de détail
- Personnalisation du thème de l'appli (fond blanc, AppBar en indigo) pour remplacer le thème sombre par défaut

### Corrigé
- Les images ne s'affichaient pas (`Unable to load asset`) à cause d'une mauvaise indentation de la clé `assets:` dans `pubspec.yaml`
- "Unable to load asset: "assets/images/concert1.jpg".The asset does not exist or has empty data."


 



<!--
Exemples de versions suivantes (à adapter à VOTRE application) :

## [1.1.0] - 2026-10-02
### Ajouté
- Formulaire de réservation avec validation des champs.
### Corrigé
- La date ne s'affichait pas sur l'écran de détail (voir A-002).

## [1.1.1] - 2026-10-06
### Corrigé
- Plantage au clic quand un concert n'avait pas de lieu (voir A-003).
-->
