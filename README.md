Tim Hortons App ☕📱 

# ☕ CoffeeApp2 - Tim Hortons Coffee Ordering App

## Student Information

**Student Name:** Selvaraj Thyagarajan
**Course Code:** MWD3A (iOS)
**Course Name:** iOS Development
**Assignment:** Assignment 2
**College:** triOS College

---

# Project Overview

CoffeeApp2 is a SwiftUI-based iOS application inspired by the Tim Hortons coffee ordering experience. The application allows users to browse coffee products, view coffee details, select quantities using a Stepper control, add items to a shopping cart, and confirm orders.

This assignment extends the original Assignment 1 prototype by implementing a cleaner folder structure, JSON data loading, SwiftData integration, splash screen, improved navigation, image assets, cart management, and a polished user interface.

---

# Learning Objectives

This project demonstrates:

* SwiftUI Navigation
* SwiftData Models
* JSON Data Loading
* MVVM-style Architecture
* State Management
* Environment Objects
* Stepper Controls
* Cart Functionality
* Data Persistence
* Image Assets
* Splash Screen Implementation
* Git & GitHub Version Control

---

# Features

### ✅ Splash Screen

Displays a custom splash screen when the application launches.

### ✅ Coffee Menu

Loads coffee products from a JSON file.

### ✅ Coffee Detail Screen

Displays coffee information, category, image, and price.

### ✅ Stepper Quantity Selection

Allows users to select quantities between 1 and 10.

### ✅ Shopping Cart

Users can add coffee products to a cart.

### ✅ Cart Summary

Displays:

* Total Items
* Total Price

### ✅ Order Confirmation

Allows users to confirm and clear their order.

### ✅ SwiftData Integration

Coffee products are stored using SwiftData models.

### ✅ JSON Data Loading

Coffee data is loaded from:

```text
Resources/coffeeData.json
```

---

# Project Architecture

```text
coffeeData.json
        ↓
DataLoader.swift
        ↓
JSONDecoder
        ↓
Coffee Models
        ↓
SwiftData
        ↓
@Query
        ↓
SwiftUI Views
        ↓
CartManager
```

---

# Folder Structure

```text
CoffeeApp2
│
├── CoffeeApp2App.swift
│
├── Assets
│   ├── CoffeeApp2App
│   │   ├── appLogo
│   │   └── coffeeIcon
│   │
│   └── SplashScreen
│       └── splashCoffee
│
├── Models
│   ├── Coffee.swift
│   └── CartItem.swift
│
├── Views
│   ├── ContentView.swift
│   ├── SplashView.swift
│   ├── CoffeeListView.swift
│   ├── CoffeeDetailView.swift
│   └── CartView.swift
│
├── Managers
│   └── CartManager.swift
│
├── Data
│   └── DataLoader.swift
│
└── Resources
    └── coffeeData.json
```

---

# Frameworks Used

```text
SwiftUI
SwiftData
Foundation
```

---

# SwiftUI Property Wrappers Used

### @State

Stores local view state.

Example:

```swift
@State private var quantity = 1
```

---

### @Binding

Allows data sharing between parent and child views.

Example:

```swift
@Binding var showSplash: Bool
```

---

### @EnvironmentObject

Shares data across multiple views.

Example:

```swift
@EnvironmentObject var cartManager: CartManager
```

---

### @Published

Automatically refreshes SwiftUI views when data changes.

Example:

```swift
@Published var cartItems: [CartItem]
```

---

### @Query

Fetches SwiftData records automatically.

Example:

```swift
@Query(sort: \Coffee.name)
private var coffees: [Coffee]
```

---

### @Model

Defines a SwiftData model.

Example:

```swift
@Model
class Coffee
```

---

# How to Run the Project

### Step 1

Open:

```text
CoffeeApp2.xcodeproj
```

### Step 2

Select an iPhone Simulator.

Recommended:

```text
iPhone 16 Pro
```

### Step 3

Build the project:

```text
Command + B
```

### Step 4

Run the application:

```text
Command + R
```

---

# Testing Checklist

### Splash Screen

* [ ] Splash screen appears.
* [ ] App automatically transitions to Coffee Menu.

### Coffee Menu

* [ ] Coffee items load from JSON.
* [ ] Images display correctly.

### Coffee Details

* [ ] Detail screen opens.
* [ ] Stepper changes quantity.

### Cart

* [ ] Add item to cart.
* [ ] Cart updates item count.
* [ ] Total price updates correctly.

### Confirmation

* [ ] Confirm order.
* [ ] Cart clears successfully.

---

# Screenshots Included

The following screenshots should be included with the assignment submission:

1. Splash Screen
2. Coffee Menu Screen
3. Coffee Detail Screen
4. Cart Screen
5. Stepper Quantity Screen
6. Xcode Folder Structure
7. GitHub Repository

---

# GitHub Repository

Repository Name:

```text
iOSApp1
```

Repository URL:

```text
https://github.com/MovingSpots/iOSApp1
```

---

# Author

**Selvaraj Thyagarajan**

Mobile Application Development Program
triOS College

---

# License

MIT License


 
