#   Why use models?
Models in applications make much easier future changes in database used. If we use a lib, for example, for MySQL, and in the future, we change to MongoDB, all the code that process de DB values will have to change, using another lib, methods, etc. Using Models, we can get, for example, one Json from an API, from a DB in MySQL, from a DB in Oracle and the Model convert to variables to our code.

#   Creating a Model
```
    class QuizModel {
  		final String title;
  		final List<> questions;

  		QuizModel({required this.title, this.questions = initHoweverYouWant});
	}
```

#   Saying if a variable can be null
```
    final String? title;    //With ? we say that our variable can be null
```

#   Making verifications in parameters passed to the model:
We can make a pre-process when some component calls the model. The model checks some parameters passed for him:
```
    QuestionModel({required this.title, required this.answers}) : assert(answers.length == 4);
    //This example will check if the answers list have 4 indexes
```

#   Using enum in a class
For easier verifications, we can use enum to create something like a list with values that are pertinent in our code:
```
    enum Level{facil, medio, dificil, perito}

    class QuizModel {
        final Level level;
```

# Dart Data Class Generator Extension
To make easier all work of create models that receives a JSON, we can use [Dart Data Class Generator](https://marketplace.visualstudio.com/items?itemName=BendixMa.dart-data-class-generator) and he will create all the functions (fromMap, fromJson, etc).

