# Creating folder and archive for challenge page
```
    /devquiz/lib/challenge/challenge_page.dart
```

# Using Safe Area in application
-   To ensure that our components will not pass the top of mobile screen, we will use a SafeArea component enclosing the other ones:
```
    child: SafeArea(
        top: true,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                    Navigator.pop(context);
                }),
```

# Passing variables to Stateful/Stateless Widgets by parameters
-   We can pass some parameters to one Widget to another:
```
    class QuizWidget extends StatefulWidget {
        final String title;
        final bool isRight;
        final bool isSelected;
        const AnswerWidget({
                Key? key, 
                required this.title,
                this.isRight = false,
                this.isSelected = false
        }) : super(key: key);
```

# Using get with conditions
-   We can select a color according to a variable in our widget:
```
    Color get _selectedColorRight => isRight ? AppColors.darkGreen : AppColors.darkRed;
```