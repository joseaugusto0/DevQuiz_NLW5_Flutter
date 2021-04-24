#   Changing Stateless to Stateful
The animation needs to be Stateful, because the value will constantly change during the time. So, we can use the **Dart Data Class Generator** Extension. Select the class you want to convert, click, and will appear a magnifying glass in the side. Click in this icon, and select something with "Stateful". The extension will convert automatically your class.

#   Using SingleTickerProviderStateMixin to get vSync
```
    class _ChartWidgetState extends State<ChartWidget> with SingleTickerProviderStateMixin {
  		late AnimationController _controller;
  		late Animation<double> _animation;  //The double value is the percent of the user progress
```

We will extend our widget state with SingleTickerProviderStateMixin to had vSync and allow the animation
The "late" means that the variable will be initialize after this.

#   Creating the animation function
```
    void initAnimation(){
        _controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
        _animation = Tween<double>(begin: 0.0, end: widget.percent).animate(_controller);
		_controller.forward();
  	}
```

-   The Animation Controller will get the vsync that we catch with the extend we made, and the animation time
-   Tween will get the initial and final values that will be used in animation
-   _controller.forward will make a forward progress in values (had the reverse option too)

We need to put this function in the initState of the page:
```
    @override
  	void initState() {
    		_initAnimation();
    		super.initState();
  	}
```

And we need to cloister all the content in the Stack (the circular progress indicator and the text with the percent) in a AnimateBuilder component:
```
    child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) => Stack(
                children: [
```

Finally, we will get the value in _animation:

```
    child: Text(
        "${(_animation.value * 100).toInt()}%",
        style: AppTextStyles.heading,
    ),

```