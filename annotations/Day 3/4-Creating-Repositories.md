#   Why use repositories?
The repositories will get the values in Json and pre-process to model the values.
For example, in our application, we save our quiz with a String with difficult level, but our application uses the enum we created before. The repository can make that transformation before the value reach the model.
Repositories are in the middle of DB and our Models, or in the middle of Models and the rest of application

# Creating a simple Repository
We create a simple repository that will get the Json, convert him for a Model class, and return the class:
```
    class HomeRepository {
        Future<UserModel> getUser() async {
                final response = await rootBundle.loadString("assets/database/user.json");
                final user = UserModel.fromJson(response);
            return user;
        }
        //Tem o future do QuizModel, mas eu tirei aqui só pra ficar mais clean

    }
```

#   Using extensions to process values:
We need to convert the difficult value to String into our enum value, so we can use a cool way that object oriented languages allow. We will make an extension in String values in the class, for example, we have a String variable, and this string has different methods, like "concatenate()", "toInt()" and others, making a extension you will create a method like that!
```
    extension LevelStringExt on String{
        Level get parse=> {     //Here we will say what type we will obtain in the final of the process
                    "facil": Level.facil,
                    "medio": Level.medio,
                    "dificil": Level.dificil,
                    "perito": Level.perito
            }[this]!;
        }
```

And we can use this extension in our component, for example, getting the value from Json, converting him and passing in a parameter:
```
    level: map['level'].toString().parse,
```