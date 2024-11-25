# SoundScope - Cart Functionality

## Overview
The **SoundScope** project is an online music store platform where users can browse, discover, and purchase music. In this project, I was responsible for implementing the **cart functionality**, allowing users to manage the music tracks they wish to purchase. This feature enables users to **add**, **update**, and **delete** items in their cart before proceeding to checkout.

## Features Implemented
- **Add to Cart**: Users can add selected music tracks to their cart, specifying the music type and quality.
- **Delete from Cart**: Users can remove items from their cart, updating the list of selected items.
- **Update Cart**: Users can modify the details of items in their cart, such as changing the music type or quality.

## Technologies Used
- **Java**: Used for backend logic to handle cart operations (add, update, delete).
- **JSP**: Provides the front-end interface to interact with the cart and manage music items.
- **MySQL**: Database management system used for storing cart data and performing CRUD (Create, Read, Update, Delete) operations.
- **Servlets**: Handles HTTP requests, processes cart actions, and links the frontend interface to backend logic.

## Folder Structure
- **model**: Contains the `cart` and `music` classes that define the structure of cart and music items.
- **services**: Contains the `cartServices` class, which handles the core business logic for adding, updating, and deleting cart items.
- **servlet**: Contains servlet classes for processing user requests related to cart operations.
- **utils**: Contains the `DBConnect` class, which manages the connection to the MySQL database.

## How to Use
1. **Add Music to Cart**: Select music items and add them to your cart by specifying the desired music type and quality.
2. **View Cart**: Check the current content of your cart, including music details such as name, artist, and selected quality.
3. **Update Cart**: Modify the details of existing cart items, such as changing the music type or quality.
4. **Delete from Cart**: Remove unwanted items from your cart, keeping only the selections you want to purchase.
