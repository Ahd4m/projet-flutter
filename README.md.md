<!--
============================================================
TRAME À COMPLÉTER — Documentation technique de l'applicationn
BTS SIO2 SLAM — Lycée Robert Schuman, Metz
Mode d'emploi :
  1. Placez ce fichier sous le nom README.md à la RACINE de votre dépôt.
  2. Ce fichier décrit l'application dans son ÉTAT ACTUEL.
     Le journal des versions va dans CHANGELOG.md,
     le suivi des bugs dans ANOMALIES.md.
  3. Mettez à jour ce README À CHAQUE évolution notable de l'application.
  4. Remplacez tout ce qui est entre chevrons <...> et suivez les
     consignes en commentaires <!-- ... -->, puis supprimez-les.
============================================================
-->

# HellMetz Mobile — Documentation technique

**Auteur :** Adam Bolzinger
**Classe :** BTS SIO2 SLAM — Lycée Robert Schuman, Metz
**Version courante :** 1.0.0   **Date :** 23/09/2026
**Suivi :** voir [CHANGELOG.md](CHANGELOG.md) (versions) et [ANOMALIES.md](ANOMALIES.md) (bugs)

---

## Sommaire
1. [Présentation](#1-présentation)
2. [Fonctionnalités](#2-fonctionnalités)
3. [Architecture technique](#3-architecture-technique)
4. [Choix techniques](#4-choix-techniques)
5. [Lancement](#5-lancement)
6. [Captures d'écran](#6-captures-décran)
7. [Suivi](#7-suivi)
8. [Glossaire et références](#8-glossaire-et-références)

---

## 1. Présentation

<!-- À quoi sert l'application, pour qui, dans quel contexte (billetterie HellMetz) ? -->
HellMetz Mobile, c'est une appli pour les concerts et spectacles organisés par la SIOE à metz. Le but c'est de pouvoir consulter 
la liste des concerts disponnible direct depuis son téléphone, et de voir le détail de chaque concert (artiste, date, lieu). 
Pour l'instant les données sont codées en dur dans l'appli.

## 2. Fonctionnalités

<!-- Ce que l'utilisateur peut faire, écran par écran. Mettez à jour à chaque ajout. -->
- **Écran d'accueil :** liste des 5 concerts disponnibles, affichée avec un `ListView.builder`, chaque concert sous forme de carte (image, titre, artiste, date)
- **Écran de détail :** au clic sur un concert, on arrive sur un écran qui affiche toutes ses infos (titre, artiste, date, lieu, image), avec un bouton retour vers la liste
- **Thème visuel :** couleurs personnalisées (fond blanc, AppBar en indigo) pour que ce soit plus lisible que le thème sombre par défaut de Flutter

## 3. Architecture technique

<!-- Décrivez l'organisation du code. Adaptez l'arborescence à votre projet. -->

```text
lib/
  main.dart                  # point d'entrée + MaterialApp
  models/concert.dart        # modèle de données
  data/concerts.dart         # données (codées en dur pour l'instant)
  widgets/carte_concert.dart # carte d'un concert
  screens/
    liste_concerts.dart      # liste + navigation
    detail_concert.dart      # écran de détail
```
 
| Élément | Rôle |
|---------|------|
| `Concert` | modèle de données avec les champs titre, artiste, date, lieu et image |
| `CarteConcert` | widget qui affiche une carte cliquable pour un concert (image + titre en gras + artiste + date) |
| `ListeConcertsScreen` | écran principal, affiche la liste des concerts et gère la navigation vers le détail |
| `DetailConcertScreen` | écran de détail, reçoit un `Concert` par son constructeur et affiche toutes ses infos |

## 4. Choix techniques

<!-- Justifiez brièvement vos choix. -->
- `CarteConcert` et `DetailConcertScreen` sont des `StatelessWidget` parce que leur affichage ne change pas une fois construit, pas besoin de gérer un état
- `ListView.builder` plutôt qu'une liste simple, pour ne construire que les cartes visibles à l'écran (plus performant si la liste s'agrandit plus tard)
- Navigation avec `Navigator.push` + `MaterialPageRoute`, en passant directement l'objet `Concert` en paramètre du constructeur de `DetailConcertScreen` — évite de refaire une recherche du concert sur l'écran de détail
- Les images des concerts sont stockées en local dans `assets/images/` et déclarées dans `pubspec.yaml`, en attendant une vraie gestion via API plus tard
- Le thème est personnalisé dans `main.dart` (fond blanc, AppBar indigo) pour corriger le rendu sombre par défaut qui n'était pas lisible

## 5. Lancement

**Prérequis :** environnement Flutter installé (`flutter doctor` OK).
 
```bash
flutter pub get
flutter run
```

## 6. Captures d'écran

<!-- Une capture par écran, légendée. Rangez-les dans docs/img/. -->
![Écran liste des concerts](docs/img/ecran-liste.png)
![Écran de détail](docs/img/ecran-detail.png)

## 7. Suivi

- Historique des versions : [CHANGELOG.md](CHANGELOG.md)
- Anomalies connues et corrigées : [ANOMALIES.md](ANOMALIES.md)

## 8. Glossaire et références

<!-- Termes techniques employés + liens officiels -->
- **Widget** : brique de base de l'interface Flutter (tout est un widget en gros c'est un texte, un bouton, une mise en page etc)
- **StatelessWidget** : widget qui ne change pas une fois affiché
- **ListView.builder** : liste qui ne construit que les éléments visibles à l'écran, pour économiser les ressources
- **Navigator** : objet Flutter qui gère la pile des écrans et permet de naviguer de l'un à l'autre
- **Asset** : fichier statique (image, son, police...) embarqué dans l'application et déclaré dans `pubspec.yaml`
- Documentation Flutter : https://docs.flutter.dev/ui/widgets
---

*README tenu à jour par Adam Bolzinger — dernière mise à jour : 23/09/2026.*