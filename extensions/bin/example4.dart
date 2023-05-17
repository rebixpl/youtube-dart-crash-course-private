// Finding Duplicate Values in Iterables

void main(List<String> args) {
  print([1, 2, 3, 1].containsDuplicateValues); // OUTPUT: true
  print(['Foo', 'Bar', 'Foo'].containsDuplicateValues); // OUTPUT: true

  print([1, 2, 3].containsDuplicateValues); // OUTPUT: false
  print([1, 2, 3, 1].containsDuplicateValues); // OUTPUT: true
  print(['Foo', 'Bar'].containsDuplicateValues); // OUTPUT: false
  print(['Foo', 'Bar', 'foo'].containsDuplicateValues); // OUTPUT: false
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}
