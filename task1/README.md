# Product App
A Flutter-based mobile application for displaying a list of products with details. The app fetches product data from an API or local source and presents it in a grid view. Users can click on any product to view more detailed information.

## Features
  ### Product List:
      Displays a list of products in a grid layout.
  ### Product Details: 
      Users can tap on any product to see more information, such as description, price, and image.
  ### Loading State: 
      While fetching the products, the app shows a loading indicator.
  ### Error Handling:
      Displays an error message if product data fails to load.

## Screenshots
![1](https://github.com/user-attachments/assets/6d54d395-5c25-402b-b4e6-a5cd8b4054d0) https://github.com/user-attachments/assets/c7425468-fcaf-4e2c-8d5f-c09ae0d251f8 ![Screenshot_1738876385](https://github.com/user-attachments/assets/8c8c1273-dfc9-4646-870b-d1e7ef6292e8)

## Video For Project
https://github.com/user-attachments/assets/69ef3608-27b6-4bb8-b24f-0217b3063787



## Requirements
  Flutter 2.x or higher
  Dart 2.x or higher

## Project Structure 
        lib/
      ├── core/
      │   ├── utils/
      │   │   ├── colors.dart
      │   │   └── text_style.dart
      ├── features/
      │   └── home/
      │       ├── presentation/
      │       │   ├── bloc/
      │       │   │   └── product_bloc.dart
      │       │   ├── view/
      │       │   │   └── home_screen.dart
      │       │   └── widget/
      │       │       └── product_card_widget.dart
      └── main.dart
## Usage
The app fetches products and displays them in a grid view. Each product card shows basic information like the name and image. When clicked, it navigates to a detailed page with more information, including a description, price, and image.

### Home Screen
The home screen is the main entry point, displaying all products in a grid layout. It uses a Bloc to manage the state of the products (loading, loaded, error).

### Product Detail Screen
The product detail screen is displayed when the user taps on a product card. It shows more detailed information about the selected product.



