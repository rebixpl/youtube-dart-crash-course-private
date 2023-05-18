// Rethrow Keyword

void main(List<String> args) {
  try {
    tryCreatingPerson();
    tryCreatingPerson(age: 20);
    tryCreatingPerson(age: -1);
    tryCreatingPerson(age: 141);
  } catch (e, st) {
    print(e);
    print(st);
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException {
    rethrow;
  } catch (e, st) {
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
