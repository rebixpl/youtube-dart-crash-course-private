// SPread Operator with Collections

void main(List<String> args) {
  addToArrayWrong();
  print('--------------------');
  addToArrayRight();
  print('--------------------');
  addToDictionaryWrong();
  print('--------------------');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  final allNamesWrong =
      names1; // THis is copying the memory address, not content of an array
  allNamesWrong.addAll(names2);
  print(names1); // Output: [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]
  print(names2); // Output: [Foo 2, Bar 2, Baz 2]
  print(allNamesWrong); // Output: [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  final allNamesRight = [...names1, ...names2];
  print(names1); // Output: [Foo 1, Bar 1, Baz 1]
  print(names2); // Output: [Foo 2, Bar 2, Baz 2]
  print(allNamesRight); // Output: [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]

  final anotherWay = {...names1}..addAll(names2);
  print(anotherWay); // Output: {Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2}
}

void addToDictionaryWrong() {
  /// adding to const will crash
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };

  try {
    final result = info;
    result.addAll({'weight': 80});
  } catch (e) {
    print(e); // ERROR: Unsupported operation: Cannot modify unmodifiable map
  }
}

void addToDictionaryRight() {
  /// adding to const will crash
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };

  final result = {...info}..addAll({'weight': 80});
  print(result); // Output: {name: Foo, age: 20, height: 1.8, weight: 80}
}
