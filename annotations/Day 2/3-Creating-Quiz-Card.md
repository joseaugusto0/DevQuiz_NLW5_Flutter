# Using Sized Box 
-   We can use Sized Box to make a "transparent" box in our page, like a padding
```
    SizedBox(height:16),
```

# Using ListView or GridView
-   With ListView and Gridview, we enable the scroll our list of components
-   All the itens in this components will be add dinamically
```
    child: GridView.count(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: controller.quizzes!.map((e) => QuizCardWidget(
            title: e.title,   
```