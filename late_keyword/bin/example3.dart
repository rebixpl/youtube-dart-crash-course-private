// late variables in classes

void main(List<String> args) {
  final instance = Person();
  print(instance.age);
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
