// late variables in classes

/* Here is the explanation for the code above:
1. The constructor is called first.
2. Then the instance variable description is initialized.
3. The heavyCalculationOfDescription() function is called.
4. It returns the value "Foo Bar" which is assigned to the description variable.
5. The description variable is now initialized.
6. The constructor is finished and the instance is created.
7. The age variable is now accessible.
8. The age variable is now accessible. */

void main(List<String> args) {
  final instance = Person();
  print(instance.age); // OUTPUT: 18
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('FUnction heavyCalculationOfDescription is called');
    return "Foo Bar";
  }
}
