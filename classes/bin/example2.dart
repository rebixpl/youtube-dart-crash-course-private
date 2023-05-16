// Constructors

/* Here is the explanation for the code above:
1. The class Person has a default constructor, a named constructor with an initializer list, 
and a named constructor with an initializer list and optional parameters.
2. The default constructor takes two required parameters, name and age.
3. The named constructor with an initializer list, named foo, sets the name property to “Foo” 
and the age property to 20.
4. The named constructor with an initializer list, named bar, sets the name property to “Bar” 
and the age property to the value passed in as an argument.
5. The named constructor with an initializer list and optional parameters, named other, 
sets the name property to the value passed in as an argument or “Baz” if no argument is 
passed. It also sets the age property to the value passed in as an argument or 30 if no 
argument is passed. */

void main(List<String> args) {
  // Named Constructor with an initializer list
  const person2 = Person.foo();
  print(person2.name); // Foo
  print(person2.age); // 20

  print('------------------');
  const person3 = Person.bar(30);
  print(person3.name); // Bar
  print(person3.age); // 30

  print("------------------");
  const person4 = Person.other(name: "Foo");
  print(person4.name); // Foo
  print(person4.age); // 30

  print("------------------");
}

class Person {
  final String name;
  final int age;

  // Default constructor
  const Person(
    this.name,
    this.age,
  );

  // Named Constructor with an initializer list
  const Person.foo()
      : name = "Foo",
        age = 20;

  // Named Constructor with an initializer list
  const Person.bar(this.age) : name = "Bar";

  const Person.other({String? name, int? age})
      : name = name ?? "Baz",
        age = age ?? 30;
}
