# Tap Invest - Bond Listing & Detail App (Assignment)

This is a Flutter app built as part of the Tap Invest assignment. It displays a list of bonds and allows users to view detailed information for each bond, including financial charts, issuer details, and pros & cons. The app supports search functionality with real-time highlighting.

---

## Features

- **Search Bonds** by ISIN, company name, rating, or tags
- **Smart Highlighting** of matching search terms
- **Bond Detail View** with:
  - Company Header
  - Financial Chart (Revenue & EBITDA toggle)
  - Issuer Details
  - Pros & Cons Section
- **Interactive Bar Charts** using `fl_chart`
- **State Management** with `Cubit` (from `flutter_bloc`)
- **Dependency Injection** using `injectable`
- **Immutable Models** using `freezed` and `json_serializable`

---

## 🧱 Tech Stack

| Tool / Library       | Purpose                             |
|----------------------|-------------------------------------|
| Flutter              | UI Development                      |
| flutter_bloc         | State management (Cubit)            |
| freezed              | Immutable data classes              |
| injectable + get_it  | Dependency Injection                |
| fl_chart             | Charting (Bar chart for financials) |
| dio                  | Networking                          |
| Google Fonts         | Custom fonts                        |

---

## 🗂️ Folder Structure (Key Modules)
```bash
│
├── application/
│ └── bond_detail/ # BondDetailCubit and State
│ └── bonds/ # BondCubit and filtering logic
│
├── domain/
│ └── bond/ # BondModel
│ └── bond_detail/ # BondDetailModel & Repositories
│
├── infrastructure/
│ └── bond_detail/ # BondDetailRepositoryImpl (uses Dio)
│  └── bond/
│
├── presentation/
│ ├── helper/
│ │ └── highlightMatchSpan.dart
│ ├── screens/
│ │ └── home.dart
│ │ └── bond_detail_screen.dart
│ ├── widgets/
│ └── BondCard.dart
│ └── bond_tabs.dart
│ └── bond_header.dart
│ └── financial_chart.dart
│ └── issuer_details_card.dart
│ └── pros_and_cons.dart
│
├── injection.dart # Configures dependency injection
└── main.dart
```

## Installation

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs #Generate Freezed & Injection code
```

## Screenshots

<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/824e41e4-c7ce-40e3-8181-0413946e3b90" width="200" height="400" /></td>
    <td><img src="https://github.com/user-attachments/assets/09a0f202-c315-4672-ad04-e4f9202a9d55" width="200" height="400" /></td>
    <td><img src="https://github.com/user-attachments/assets/0e928e93-5ccd-44d6-86b1-dbe802e61a2e" width="200" height="400" /></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/4b4552b9-4a4d-4e70-8695-46bf3582968a" width="200" height="400" /></td>
    <td><img src="https://github.com/user-attachments/assets/096fbe85-56d9-4025-b456-5e5c4eb5794a" width="200" height="400" /></td>
    <td><img src="https://github.com/user-attachments/assets/67a90aef-8fef-4d12-af37-8c37d11ae7b8" width="200" height="400" /></td>
  </tr>
</table>

## State Management & Architecture

This app uses the following key libraries for clean architecture and effective state management:

### Cubit (from `flutter_bloc`)
Cubit is a lightweight state management solution. It allows you to emit new states via simple functions, making it ideal for straightforward business logic.

- **Used For:** Managing UI states like `loading`, `loaded`, and `error` (e.g., `BondCubit`, `BondDetailCubit`).
- **Official Docs:** [https://bloclibrary.dev/#/coreconcepts](https://bloclibrary.dev/#/coreconcepts)

---

### Freezed
Freezed is a powerful code generator for immutable classes and union types. It simplifies state classes in Cubit/Bloc.

- **Used For:** Creating union states like `BondState.initial()`, `BondState.loaded()`, etc.
- **Official Docs:** [https://pub.dev/packages/freezed](https://pub.dev/packages/freezed)

---

### Injectable
Injectable is a code generator for dependency injection. It works with `get_it` to automate service locator setup.

- **Used For:** Injecting Cubits, repositories, and APIs using `@injectable` and `@LazySingleton`.
- **Official Docs:** [https://pub.dev/packages/injectable](https://pub.dev/packages/injectable)

