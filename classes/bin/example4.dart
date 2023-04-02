// Getters in Classes

void main(List<String> args) {
  const person1 = Person(
    firstName: 'John',
    lastName: 'Doe',
  );
  print(person1.firstName); // John
  print(person1.lastName); // Doe
  print(person1.fullName); // John Doe
}

// METHOD 1 WTHOUT GETTER
// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;
//   const Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';
// }

// METHOD 2 WITH GETTER
class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
