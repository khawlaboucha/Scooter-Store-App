##  ScooterHomePage - Home Screen for Scooter Store App

This widget represents the home screen of the Scooter Store app. It showcases a specific scooter model with features like:

 ## Show Details Toggle: 
  Clicking the "Show Details" button expands a section displaying detailed information about the scooter, including key features, specifications, and a "Buy Now" button.
Detailed Information: When expanded, the "Show Details" section reveals key features like scooter images in a horizontal scroll view, specifications (likely weight and speed), and a prominent "Buy Now" button.
 ## Key Components:

# Imports:
  - package:flutter/material.dart: Provides core Flutter UI elements.
  - package:scooter_store_ui/config/constants.dart: Contains constants used throughout the app (likely colors, fonts, etc.).
  - package:scooter_store_ui/models/scooter_model.dart: Defines the data structure for a scooter model.
  - package:scooter_store_ui/screens/adult_scooters.dart: Renders the scooter details section with image and menu items.
  - package:scooter_store_ui/screens/specification_detail.dart: Renders the specification details section (likely for weight and speed).
  - _ScooterHomePageState: Manages the state of the widget, including:
  - isShow (bool): Controls the visibility of the expanded details section.
  - mainHeight (double): Controls the height of the main scooter information section.
  - height (double): Controls the height of the expanded details section.
# Build Method:
 - Creates a background with a gradient.
 - Displays a container with the app's primary color at the top.
 - Uses AnimatedContainer to animate the height changes for both the main information and expanded details sections.
 - Conditionally renders the AdultScooters widget to display the scooter image and menu items (if isShow is true).
 - Shows the scooter name, price, and description in a separate container.
 - Renders the "Show Details" button and its functionality:
 - Toggles the isShow state.
 - Adjusts mainHeight and height to control the animation.
 - Conditionally renders the expanded details section (if isShow is false).