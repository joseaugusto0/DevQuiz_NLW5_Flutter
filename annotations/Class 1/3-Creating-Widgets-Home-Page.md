# Creating constructor to Stateful or Stateless Widgets
```
    HomePage({Key? key}) : super(key: key);
```

# Using Scaffold structures
-   Scaffold generates all the structure for your page, with appBar, body, bottom.
-   When your creates a AppBar, the Scaffold will set the best size for the component
-   For the AppBar Widget, we will use an extend to PreferedSize:
```
    class AppBarWidget extends PreferredSize {
        final UserModel user;
        AppBarWidget({required this.user}) : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
                height: 250,
      
                child: Stack(
                    children: [
```

# Using Text.rich
-   To use a text with different style, we can use Text.rich to avoid different Text() components and pollute the code:

```
    Text.rich(
        TextSpan(
        text: "Olá, ", style: 
        AppTextStyles.title,
        children: [
            TextSpan(
            text: user.name,
            style: AppTextStyles.titleBold
            )
        ]
        ),
    ),
```