#   Creating a HomePage State 
To know if the home page is loading, or already loaded, we will use a **enum** with different states:
```
    // devquiz/lib/home/home_state.dart
    enum HomeState{
  		sucess,
  		loading,
  		error,
		empty
	}
```

#   Using ValueNotifier to notify value change in a variable
We can use the HomeState in differents components, but we need to know when he changes your value, so we used ValueNotifier and make functions get and set to change or obtain the variable:
```
    class HomeController {
        final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
        set state(HomeState state) => stateNotifier.value = state;
        HomeState get state => stateNotifier.value;
```

#   Creating get functions to retrieve some information in model
```
    void getUser(){
        user =  UserModel(
            state = HomeState.loading;  //Saying that our application is requesting all the information
    		await Future.delayed(Duration(seconds: 2)); //Simulating an API request delay
            user =  UserModel(
      			name: "Zezão", 
      			photoUrl: "https://avatars.githubusercontent.com/u/51463670?v=4"
    		);

    		state = HomeState.sucess;   //Saying that our applicationg is ready to start
        )
  	}
```

# Using Model information in our AppBar
```
    class AppBarWidget extends PreferredSize {
        final UserModel user;
        AppBarWidget({required this.user}) : super(
            .
            .
            .
            TextSpan(
                text: user.name,    //using the userModel passed by parameter
            )
```

And where we call our AppBar, we pass to him the user model like that:
```
    appBar: AppBarWidget(user: controller.user!),   //The ! operator confirms that the value will not be null
```

#   Using map to convert a list of informations in a widget with that informations:
```
    children: controller.quizzes!.map((e) => QuizWidget(
        title: e.title,
    )).toList(),    //In this case, we are returning a list, because children parameter need to be a list []
```

#   Ensure that the informations are been loaded when application starts
```
    @override
  	void initState() {
        super.initState();
        controller.getUser();
        controller.getQuizzes();
        controller.stateNotifier.addListener(() {setState(() {});   //Adding a listener to get value changes
  	}
```

With that method, we ensure that the user and quizzes values will be catched when the HomePage starts

#   Using condition to render a page:
Using the HomeState value, we can make a condition to render the page just when the values are catched
```
    if(controller.state == HomeState.sucess){
        return Scaffold(..
		.
		.
	} else{
        return Scaffold(
        body: Center(...
```


