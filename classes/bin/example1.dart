// Simple Classes

/* Here is the explanation for the code above:
1. The Person class is defined with two fields: name and age.
2. The Person class has a constructor that accepts two named parameters: name and age.
3. The Person class has two properties that are initialized with the values of the constructor 
parameters.
4. The Person class is defined using the const keyword, which makes it an immutable class. 
That means you can't change the values of the properties after an instance of the Person 
class is created. */

void main(List<String> args) {
  const person1 = Person(
    name: 'John',
    age: 20,
  );
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });
}
