#   Going to Splash to Home Page
```
    Widget build(BuildContext context) {
        Future.delayed(Duration(seconds: 2)).then(
            (_) => Navigator.Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage())
            )
        );
```

-   We will use then() because the constructor didn't accept the async option
-   Navigator.pushReplacement will replace the last one page in the stack with the penultimate page.