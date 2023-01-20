// various data types

// ignore_for_file: unused_local_variable

void main(List<String> args) {
  const int someInt = 10;
  const List<int> someList = [1, 2, 3];
  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap['foo']); // 'bar'

  /// sets are kinda like lists, but they do not allow duplicate values

  // const Set<int> someSet = {1, 2, ,3 ,3 ,4}; // Invalid code, duplicate value

  const Set<int> someSet = {1, 2, 3};
  print(someSet.length); // 3

  const dynamic someNull = null;
  print(someNull); // null

  const Symbol someSymbol = #someNull;
  print(someSymbol); // Symbol("someNull")
}
