#   Creating a variable to save the currentPage that user stops in question
We need to create a controller (*/devquiz/lib/challenge/challenge_controller.dart*) that saves the index of questions as the user responds.

```
    class ChallengeController {
        final currentPageNotifier = ValueNotifier<int>(1);  
        int get currentPage => currentPageNotifier.value;
        set currentPage(int value) => currentPageNotifier.value = value;

```

#   Using PageView and PageController 
PageController is a class already in Flutter that able the easy management of a PageView. In the final of the process, the component will be a part of the page, abled to scroll one question to another
```
    body: PageView(
        controller: pageController,
        children: widget.questions.map((e) => QuizWidget(question: e,)).toList()),
```

But we need to save in our currentPage variable (in the controller created before) when the PageController change the question when he scrolls. We will add a listener when this happens:
```
    void initState() {
        controller.currentPageNotifier.addListener(() {setState(() {});});
        pageController.addListener(() {
            controller.currentPage = pageController.page!.toInt();
        });
        super.initState();
  	}
```

We can disable the side scrolling with this parameter:
```
    body: PageView(
        physics: NeverScrollableScrollPhysics(),

```

We can make a animation in question transition with Page controller:
```
    Expanded(
        child: NextButtonWidget.white(
            label: "Pular", onTap: (){
                pageController.nextPage(
                    duration: Duration(milliseconds: 100), 
                    curve: Curves.linear);
            },
        )
    ),
```

#   Preventing the rebuild of all page with setState() with ValueListenableBuilder
When we use a setState method, all the page is rebuilded, and that's not cool for our state value in page. For example, when we rebuild the page after answer a question, our currentPage value will return to initial value 0.
So we will use the ValueListenableBuilder, that will make a "another builder" just to the components you pass for him:
```
    ValueListenableBuilder(
        valueListenable: controller.currentPageNotifier, 
        builder: (context,value,_) => QuestionIndicatorWidget(
        currentPage: controller.currentPage,
        lenght: widget.questions.length,
        ),
    )
```

#   Disable the side scroll in page view
```

```