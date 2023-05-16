// Getters in Classes

/* Here is the explanation for the code above:
1. We have a class named Person.
2. It has two final fields: firstName and lastName.
3. We also have a getter called fullName.
4. The getter fullName returns the concatenation of firstName and lastName.
5. In the main function, we create a Person object named person1.
6. We print the value of firstName, lastName, and fullName. */

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
