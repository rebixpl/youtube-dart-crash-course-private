// Constructors

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
