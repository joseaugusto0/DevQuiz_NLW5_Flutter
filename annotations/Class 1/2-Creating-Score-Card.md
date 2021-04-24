# Creating a folder and the archive to Home Page > ScoreCard
```
    /devquiz/lib/home/widgets/score_card/score_card_widget.dart
```

# Creating a Stateful Widget in VS Code
-   The Score Card needs a state, we need to have the username, his photo, and his score, so we use a Stateful Widget.

# Using flex parameter in Expanded components
-   If the flex number you put in Expanded component is different from zero, you change the amount of space the child's can occupy in the main axis, you can use like that:
```
    Expanded(flex: 1, child: ChartWidget(percent: percent,)),
              Expanded(
                flex:2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Vamos começar",style: AppTextStyles.heading,),
                      Text("Complete os desafios e avance em conhecimento",style: AppTextStyles.body,),
                    ],
                  ),
                ),
              )
```

# Using Stack to put components one on top of the other
-   For Score Graph, we will use stack to put the percentage on top of the chart
```
    Stack(
        children: [
            Center(
            child: Container(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                strokeWidth: 10,
                value: _animation.value,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
            ),
            ),
            Center(
            child: Text(
                "${(_animation.value * 100).toInt()}%",
                style: AppTextStyles.heading,
            ),
            )
        ],
        ),
```

# Aligning the components
-   You can align some components with two parameters:
```
    mainAxisAlignment: MainAxisAlignment.center //Will align in vertical axis
    rossAxisAlignment: CrossAxisAlignment.start  //Will align horizontal axis
```