# Declaration
In a function declaration, most times you might wanna ommit the type, and do not mark it as a variable.
```
decl (func I -> O)? <identifier> = func I -> O { ... };
```
# High Order
As functions are considered regular values, functions can be passed as arguments to other functions and also can be returned from other functions
# Currying
It's also possible to create partial solutions of a function, it means, you pass the value of some arguments and the result will be a function which receives the reimaining arguments.
# Methods
Functions which are meant to run over a instance of a struct
```
meth (read|write|mov) I -> O { ... }
```

# Parallels
Functions which can be ran in parallel with the current program
```
|func I -> O { ... }
|meth (read|write|mov) I -> O { ... }
```
