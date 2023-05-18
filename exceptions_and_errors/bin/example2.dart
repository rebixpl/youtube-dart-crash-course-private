// Custom Exception Class

void main(List<String> args) {
  tryCreatingPerson(); // OUTPUT: 0
  tryCreatingPerson(age: 20); // OUTPUT: 20
  tryCreatingPerson(
      age: -1); // OUTPUT: InvalidAgeException: Age cannot be negative, -1
  // STACK TRACE
  //
  tryCreatingPerson(
      age:
          141); // OUTPUT: InvalidAgeException: Age cannot be greater than 140, 141
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (e, st) {
    print(e.runtimeType);
    print(e);
    print(st);
  }
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);

  @override
  String toString() => 'InvalidAgeException: $message, $age';
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age cannot be greater than 140');
    }
  }
}
