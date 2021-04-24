# DevQuiz - NextLevelWeek #5 - Flutter
![Dart](https://github.com/MikeCodesDotNET/ColoredBadges/blob/master/svg/dev/languages/dart.svg)
![Flutter](https://github.com/MikeCodesDotNET/ColoredBadges/blob/master/svg/dev/frameworks/flutter.svg)

## Description
  This application proposes a quiz with a user score updated when he answers the questions. All application was developed in Flutter during programming week, proposed by [Rocketseat](https://rocketseat.com.br/). This repository contains all the aplication in [devquiz](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/tree/main/devquiz) page, and some comments that I made during the week in all classes.


# Index

- [Instalation](#instalation)
- [Project structure](#project-structure)


## Instalation
- Install Flutter and Dart plugins in VS Code - [Install](https://flutter.dev/docs/get-started/editor?tab=vscode)
    1. Start VS Code
    2. Invoke ** View > Command Pallete... **
    3. Type “install”, and select ** Extensions: Install Extensions **
    4. Type “flutter” in the extensions search field, select Flutter in the list, and click Install. This also installs the required Dart plugin.

- Preparing your mobile - Android
    1. Your mobile need to have at least Android 4.1 (API level 16) to run Flutter applications
    2. Generally, the path to enable Development Mode is: **Settings > System > Development options**
    3. If your mobile doesn't have the **Development options**, try this:
        - **Settings > System**
        - Find the Build Number, generally in **Software information**
        - Tap the Build number field seven time 
        - Connect your mobile in your desktop USB
        - Open the terminal and type: **flutter devices**
        - Your mobile need to appear in list generated after the command
        - Et voilà

- Clone all the repository quoted in [Project Structure](#project-structure)

- Open VS Code in */devquiz/* folder

- Type F5 and your application will start do build in your mobile



## Project structure
    DevQuiz is composed basically by four pages:

    ### Splash Page
        ![Splash-Page](https://github.com/MikeCodesDotNET/ColoredBadges/blob/master/svg/dev/frameworks/flutter.svg)
```bash
.
├── devquiz     # Main folder with application
    ├── .gradle             

        ├── beef3d_utils #Folder with utilitaries to main scripts (like parameters, led control)
        ├── static       #Folder that contains HTML static things in FlaskApp 
            ├── css      #Stylesheet 
            ├── img      #Images used in FlaskApp
        ├── templates    #All .html files used in FlaskApp
```

## Technologies
Project is created with:



### Created by: @Tech


