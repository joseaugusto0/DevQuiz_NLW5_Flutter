# Project structure
DevQuiz is composed basically by four pages:

## Splash Page
![Splash-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223102.jpg){:height="50%" width="50%"}
This page appears in app inicialization for two seconds and go for the **Home Page**

## Home Page 
![Home-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223106.jpg = 360x640){:height="50%" width="50%"}
    This page contains your name and github photo saved in DB (actually in a json file), an animated score with your percent progress (saved in DB too), difficult selection, and the Quiz topics (like a handout module) saved in a different DB

## Quiz Page
![Quiz-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223111.jpg = 360x640){:height="50%" width="50%"}
    In this page appear the question number, your progress in a green bar at the top, the question and the different alternatives. When you select one answer, the app will say if the answer is right or wrong and jump to another question automatically. You can jump question pressing the button at the bottom. When your answer all the questions, will appear a **Confirm** button which will redirect you to **Result Page**

## Result Page
![Result-Page](https://github.com/joseaugusto0/DevQuiz_NLW5_Flutter/blob/main/images/Screenshot_20210423-223119.jpg){:height="50%" width="50%"}
    Will appear the title of the module your answered, the number of questions that you got it right, a share button (to you share in your social media) and a return button
