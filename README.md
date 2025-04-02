# Flutter Film Shop

A simple film shopping application built with Flutter. This app displays a grid of film items, each with an image, name, and price. Users can tap on a film to view more details on a separate page. The app demonstrates basic stateful widget usage, FutureBuilder, GridView, and navigation between screens.

---

## 🚀 Features

- Grid view of films
- Navigation to a detailed film page
- Image and price display
- Add to cart (console print simulation)

---

## 🧩 Folder Structure

lib/
├── data/
│   └── entity/
│       └── films.dart       # Film data model
├── ui/
│   └── views/
│       ├── detailPage.dart  # Detailed page of a film
│       └── mainPage.dart    # Main page showing the film list
└── main.dart                # App entry point

---

## 🛠 Requirements

- Flutter SDK
- Dart SDK
- Assets folder with images (e.g., images/django.png, images/interstellar.png, ...)

---

## 🏃‍♂️ Getting Started

1. Clone the repo:
   git clone https://github.com/yourusername/flutter_film_shop.git

2. Navigate into the project folder:
   cd flutter_film_shop

3. Get the dependencies:
   flutter pub get

4. Run the app:
   flutter run

---

## 📁 Assets

Make sure you have an images/ folder under assets/ with the required film images and that your pubspec.yaml includes:

flutter:
  assets:
    - images/

---


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
