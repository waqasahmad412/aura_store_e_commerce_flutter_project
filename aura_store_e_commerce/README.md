# Aura Store E-Commerce

A professional, scalable Flutter application generated with FlutterForge AI.

## Architecture

This project follows the official, scalable Flutter layered architecture:
- `lib/main.dart`: Application entry point and MultiProvider setup.
- `lib/app.dart`: Root MaterialApp configuration with routing and themes.
- `lib/screens/`: Feature-driven screens with nested dedicated widgets (e.g., `catalog/`, `login/`, `home/`).
- `lib/widgets/`: Shared reusable UI components.
- `lib/models/`: Data models with serialization (`toJson` / `fromJson`).
- `lib/services/`: External API, database, and authentication services.
- `lib/repositories/`: Clean abstraction over data services.
- `lib/controllers/`: Business logic and UI controllers.
- `lib/providers/`: Reactive state management (Provider).
- `lib/routes/`: Named routing and dynamic route generator.
- `lib/theme/`: Centralized Material 3 Light & Dark themes and color palette.
- `lib/utils/`: Formatters, validators, and helper utilities.
- `lib/constants/`: App constants and endpoint configuration.
- `lib/core/`: Core network clients, error models, and re-usable contracts.

## Getting Started

1. Get Flutter dependencies:
```bash
flutter pub get
```

2. Run on connected device or simulator:
```bash
flutter run
```

3. Run automated tests:
```bash
flutter test
```
