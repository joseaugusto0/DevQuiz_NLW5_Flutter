#   Share something with share_plus lib
We can use [share_plus](https://pub.dev/packages/share_plus) already created. We will change our pubspec.yaml to put our dependency:
```
    dependencies:
    flutter:
        sdk: flutter
    cupertino_icons: ^1.0.2
    google_fonts: ^2.0.0
    share_plus: ^2.0.1
```

And with that, we can use the "share" already in Android, is like you share a image in Facebook to Whatsapp, when appears the options in the bottom:
```
    Share.share('DevQuiz NL5 - Flutter: Resultado do Quiz: $title\n Obtive: ${result/lenght}% de aproveitamento');
```