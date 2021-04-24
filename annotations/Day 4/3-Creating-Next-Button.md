#   Changing Button Style of TextButton
The Button class have his own style class, the ButtonStyle:
```
    TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(overlayColor),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
```

#   Creating different inicializations
In our button, we have different button colors, for example, in "confirm" button we need a green background color, in the "jump question" button, we need a grey color. So instead passing all these informations in parameters, we will make different inicializations with the colors we need:
```
    NextButtonWidget.green({required String label, required VoidCallback onTap,})
        : this.backgroundColor = AppColors.darkGreen, 
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green, 
        this.overlayColor = AppColors.overlayGreen,
        this.onTap = onTap,
        this.label = label;
  

    NextButtonWidget.white({required String label,required VoidCallback onTap,})
        : this.backgroundColor = AppColors.white, 
        this.fontColor = AppColors.grey, 
        this.borderColor = AppColors.border,
        this.overlayColor = AppColors.overlayWhite,
        this.onTap = onTap,
        this.label = label;
```