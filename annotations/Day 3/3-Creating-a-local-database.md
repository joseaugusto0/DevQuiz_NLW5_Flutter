#   Using Json to save informations
We create a simples json-dictionary file to save our informations, something like that:
```
    {
        "name": "Zezão",
        "score": 75,
        "photoUrl": "https://avatars.githubusercontent.com/u/51463670?v=4"
    }
```

And we need to add a folder in our pubspec.yaml, to say where is our databases:
```
    flutter:
  		assets:
    		- assets/images/
    		- assets/database/
```