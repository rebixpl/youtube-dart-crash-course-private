// Static Properties and Static Methods

void main(List<String> args) {
  Person.name = 'John';
  print(Person.name); // John

  print(Car.carInstanciated); // 0
  Car(name: 'MyCar');
  print(Car.carInstanciated); // 1
  Car(name: 'MyCar2');
  Car(name: 'MyCar3');
  print(Car.carInstanciated); // 3
  final List<Car> cars = Iterable.generate(
    238,
    (n) => Car(name: 'MyCar$n'),
  ).toList();
  print(Car.carInstanciated); //  13
}

class Person {
  static String name = '';
}

class Car {
  static int _carInstanciated = 0;

  static int get carInstanciated => _carInstanciated;

  static void _incrementCarInstanciated() => _carInstanciated++;

  final String name;

  Car({
    required this.name,
  }) {
    _incrementCarInstanciated();
  }
}
