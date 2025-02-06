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
![Screenshot_1738876420](https://github.com/user-attachments/assets/e7447e12-0e5d-4ee1-b10c-3ebfea54e859) ![Screenshot_1738876382](https://github.com/user-attachments/assets/e46a3f4b-9c53-458f-8d71-dc449951cef1) ![Screenshot_1738876385](https://github.com/user-attachments/assets/b62941ba-9fa9-4311-9979-f89f3943df4f)

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



