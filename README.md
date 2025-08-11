# Flutter Grocery App UI

A Flutter Grocery App UI with two main screens: Home screen showing popular items and categories, and Product Details screen showing pricing, description, and image.

## Features

- Home screen with categories and popular products
- Product Details screen with pricing, rating, and description
- Navigation using go_router
- Bottom Navigation Bar (UI only)
- Reusable widgets and organized folder structure

## Project Structure

```
/lib
 ┣ main.dart
 ┣ /models
 ┃ ┗ product.dart
 ┣ /screens
 ┃ ┣ home_screen.dart
 ┃ ┗ product_details_screen.dart
 ┣ /widgets
 ┃ ┣ product_card.dart
 ┃ ┣ bottom_nav_bar.dart
 ┃ ┣ category_item.dart
 ┃ ┣ rating_stars.dart
 ┃ ┗ custom_app_bar.dart
 ┣ /data
 ┃ ┗ dummy_data.dart
```

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

## Dependencies

- Flutter
- go_router: For navigation between screens