# Adding color in Container border
```
    return Container(
        decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(BorderSide(
            color: borderColor)),
        borderRadius: BorderRadius.circular(28),
        ),
```

# Using Google Fonts 
-   To use existing styles from Google, we can use Google Fonts lib:
```
    GoogleFonts.notoSans(
          color: 
    ),
```

# Confirming that a parameter passed contains a determined value
```
    class LevelButtonWidget extends StatelessWidget {
        final String label;

        LevelButtonWidget({Key? key,required this.label}) 
        : assert(["Fácil","Médio","Difícil","Perito"].contains(label)) , super(key: key);
```

# Creating a config dictionary to change button style dinamically
-   We will create a dictionary with different configurations to change our button style
```
    final config = {
        "Fácil": {
        "color" : AppColors.levelButtonFacil,
        "borderColor": AppColors.levelButtonBorderFacil,
        "fontColor": AppColors.levelButtonTextFacil, 
        }, 
    }
```

-   With config dictionary we can get the style according to the label passed in widget parameters:
```
    Color get color => config[label]!['color']!;
```