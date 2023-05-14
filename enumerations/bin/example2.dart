// Enchanced Enumerations

/* This Dart code shows an example of enhanced enumerations. It defines a Car 
enumeration with two values: teslaModelX and teslaModelY. Each value of the 
enumeration has three fields: manufacturer, model, and year.

It also defines a Person class that has a name and a car field, with the latter 
being of type Car. An instance of Person is created with a name and a Car value.

A switch statement is used to check the value of person.car and print a message 
depending on the value. In this example, the value of person.car is Car.teslaModelX,
 so the output is "Person has a Tesla Model X Car: Tesla Model X 2023 */

void main(List<String> args) {
  final person = Person(
    name: 'Bob',
    car: Car.teslaModelX,
  );

  switch (person.car) {
    case Car.teslaModelX:
      print(
        'Person has a Tesla Model X ${person.car}',
      ); // OUTPUT: Person has a Tesla Model X Car: Tesla Model X 2023
      break;
    case Car.teslaModelY:
      print(
        'Person has a Tesla Model Y ${person.car}',
      );
      break;
  }
}

class Person {
  final String name;
  final Car car;

  const Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car: $manufacturer $model $year';
}
