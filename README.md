# SoundScope---Cart-Functionality

Overview
The "SoundScope" project is an online music store platform where users can browse, discover, and purchase music. My responsibility in this project was to implement the cart functionality, allowing users to manage their selected items. The cart feature enables users to add, update, and delete music tracks they wish to purchase.

Features Implemented
Add to Cart: Users can add selected music tracks to their cart, specifying music type and quality.
Delete from Cart: Users can remove items from their cart, updating the list of selected items.
Update Cart: Users can modify the details of items in their cart, such as music type or quality.

Technologies Used
Java: For backend logic and handling the cart operations (add, update, delete).
JSP: To create the front-end interface for interacting with the cart.
MySQL: For database management, storing cart data, and performing CRUD operations.
Servlets: For handling HTTP requests, processing cart actions, and connecting the frontend with the backend logic.

Folder Structure
model: Contains the cart and music classes, defining the structure of cart and music items.
services: Contains the cartServices class, which handles the business logic for adding, updating, and deleting cart items.
servlet: Contains servlet classes for handling user requests and processing cart operations.
utils: Contains the DBConnect class, which manages the database connection.

How to Use
Add Music to Cart: Select music items and add them to your cart by specifying the music type and quality.
View Cart: Check the current cart content, including music details.
Update Cart: Modify existing cart items, such as changing the music type or quality.
Delete from Cart: Remove unwanted items from your cart.
