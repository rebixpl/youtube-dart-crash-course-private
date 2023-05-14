// Static Properties and Static Methods

/* Here is the explanation for the code above:
1. We have a Person class that has a static property name.
2. We set the value of the static property name to John.
3. We print the value of the name property.
4. We print the value of the carInstanciated property.
5. We create an instance of the Car class.
6. We print the value of the carInstanciated property.
7. We create two more instances of the Car class.
8. We print the value of the carInstanciated property.
9. We create a list of 238 instances of the Car class.
10. We print the value of the carInstanciated property. */

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
