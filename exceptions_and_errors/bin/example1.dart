// Throwing in Class Constructors

void main(List<String> args) {
  tryCreatingPerson(); // OUTPUT: 0
  tryCreatingPerson(age: 20); // OUTPUT: 20
  tryCreatingPerson(age: -1); // OUTPUT: Exception: Age cannot be negative
  tryCreatingPerson(age: 141); // OUTPUT: 141
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw Exception('Age cannot be negative');
    }
  }
}
