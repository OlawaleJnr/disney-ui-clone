# Disney UI Clone

Recreating the Disney+ home page UI using Flutter.

A lightweight Flutter implementation that reproduces the look-and-feel of the Disney+ home screen with attention to layout, responsive UI, and animations. The project is intended as a UI/UX exercise and reference for building media app home screens with Flutter.

---

## Table of Contents

- Overview
- Features
- Screenshots / Preview
- Tech stack & repository stats
- Project structure
- Installation & running
- Notes on development
- Contributing
- License
- Author

---

## Overview

This repository is a Flutter-based recreation of the Disney+ home page UI. The focus is on pixel-accurate layout, responsive behavior across screen sizes, and smooth UI animations. It is implemented primarily in Dart and targets standard Flutter platforms (Android, iOS).

Repository metadata (from the repository):
- Repository: OlawaleJnr/disney-ui-clone
- Created: 2024-02-12
- Default branch: `master`
- Description: "Recreating the popular Disney+ home page UI with Flutter"
- Topics: dart, flutter, flutter-animation, flutter-ui, localstorage

Language composition (by bytes):
- Dart: 14276
- Ruby: 1414
- Swift: 689
- Kotlin: 135
- Objective-C: 38

---

## Features

- Recreated Disney+ home screen layout (hero banner, content rows, navigation)
- Responsive layout that adapts to phone and tablet widths
- UI animations for transitions and scrolling effects
- Local persistence for simple UI state
- Clean, modular Flutter widgets to separate layout and presentation

> Note: The README above is based on repository metadata. For precise dependency and implementation details (exact packages used, storage library, state management approach), see `pubspec.yaml` and the `lib/` source files.

---

## Screenshots / Preview

- assets/screenshots/home.png
- assets/screenshots/hero_animation.gif

---

## Tech stack

- Flutter (Dart)
- Platform support: Android, iOS
- Optional / inferred packages: animation utilities, local storage (e.g., shared_preferences / hive) — confirm exact packages in pubspec.yaml

---

## Project structure (typical)

This project follows a standard Flutter project layout. Example structure:

- android/               — Android native files
- ios/                   — iOS native files
- lib/
  - main.dart            — app entrypoint
  - screens/             — home screen and other pages
  - widgets/             — reusable UI widgets (hero, content cards, nav)
  - models/              — data models
  - services/            — local storage, data providers
  - theme/               — colors, typography, theme data
- assets/                — images, icons, fonts
- pubspec.yaml           — dependencies and asset declarations

---

## Installation & running

Prerequisites:
- Flutter SDK (stable channel recommended)
- An emulator/device or web support configured

Steps:
1. Clone the repo
   git clone https://github.com/OlawaleJnr/disney-ui-clone.git
2. Change directory
   cd disney-ui-clone
3. Install dependencies
   flutter pub get
4. Run on a device or emulator
   flutter run

To run on a specific device (emulator or web):
- flutter devices — to list devices
- flutter run -d <device-id>

To build a release:
- Android: flutter build apk --release
- iOS: flutter build ios --release
- Web: flutter build web

---

## Notes on development

- Keep widgets small and focused to make the layout easy to maintain and reuse.
- Use explicit breakpoints or LayoutBuilder to tune how rows and hero sections adapt to large screens.
- If local storage is used to persist user watchlist/favorites, ensure migration or schema handling when changing storage format.
- For smooth animations prefer Flutter's implicit animations or AnimationController for more complex coordinated effects.

---

## Contributing

Contributions are welcome. Typical contributions include:
- Adding missing assets/screenshots
- Improving responsiveness and accessibility
- Replacing placeholder data with remote or local content sources
- Adding tests for widgets and layout behavior

Please open issues or pull requests on GitHub.

---

## License

No license specified in repository metadata. If you want this code to be reusable by others, add a LICENSE file (e.g., MIT, Apache-2.0) to the repository.

---

## Author

OlawaleJnr — https://github.com/OlawaleJnr
