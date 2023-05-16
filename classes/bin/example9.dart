// Inheriting Constructors

/* Here is the explanation for the code above:
1. The Person class has a constructor that takes a role and assigns it to the 
final field role.
2. The Mom class is extending the Person class and is calling the super constructor
 with the role Role.mom.
3. The Dad class is extending the Person class and is calling the super constructor
 with the role Role.dad.
4. The Mom and Dad class are subclasses of the Person class and they are inheriting
 the constructor from the Person class.
5. The Mom class is overriding the role field and setting it to Role.mom.
6. The Dad class is overriding the role field and setting it to Role.dad.
7. We are calling the Mom constructor and printing the role field which is Role.mom.
8. We are calling the Dad constructor and printing the role field which is Role.dad. */

void main(List<String> args) {
  final mom = Mom();
  print(mom.role); // Role.mom
  final dad = Dad();
  print(dad.role); // Role.dad
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({
    required this.role,
  });
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
