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
    2. Invoke **View > Command Pallete...**
    3. Type “install”, and select **Extensions: Install Extensions**
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
![Splash-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223102.jpg)
This page appears in app inicialization for two seconds and go for the **Home Page**

### Home Page 
![Home-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223106.jpg)
This page contains your name and github photo saved in DB (actually in a json file), an animated score with your percent progress (saved in DB too), difficult selection, and the Quiz topics (like a handout module) saved in a different DB

### Quiz Page
![Quiz-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223111.jpg)
In this page appear the question number, your progress in a green bar at the top, the question and the different alternatives. When you select one answer, the app will say if the answer is right or wrong and jump to another question automatically. You can jump question pressing the button at the bottom. When your answer all the questions, will appear a **Confirm** button which will redirect you to **Result Page**

### Result Page
![Result-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223119.jpg)
Will appear the title of the module your answered, the number of questions that you got it right, a share button (to you share in your social media) and a return button




## Technologies
Project is created with:



### Created by: @Tech


