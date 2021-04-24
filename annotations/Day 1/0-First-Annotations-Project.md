# Flutter renderization
-   Different from React Native, which requests for Native to render the component, Flutter don't requests for nobody, HE render.
-   With that, you can control pixel by pixel in the application

# Flutter Platforms
-   Android (API 16 & above)
-   iOS (iOS 8 & above)
-   Windows (Windows 7 & above)
-   Linux (Debian 10 & above)
-   Web (Chrome 84 & above)
-   Web (Firefox 72.0 & above)
-   Web (Safari on El Capitan & above)
-   Web (Edge 1.2.0 & above)

# Basics explanations from layout used

## /devquiz/main.dart
-   Here we got the main function of our application
-   runApp will start the application
```
    void main() {
        runApp(AppWidget());
    }
```

## /devquiz/lib/core/app_widget.dart
-   Here we got the Widget Build which is called in runApp function
-   The nomenclature "Build" generally is used to create the UI
-   MaterialApp is the component used by Google, and CupertinoApp is for iOS
-   We can import material.dart, which have a lot of functions already for our applications

## /devquiz/lib/core folder
-   In this folder will have all the colors, gradients, images, text styles separated to make more organized our repository structure

## /devquiz/pubscpec.yaml 
-   This archive will had all dependencies and where the assets (images) will be
