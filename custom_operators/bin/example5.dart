/// Subtracting an Iterable from Another Iterable

void main(List<String> args) {
  print([1, 2, 3] - [1, 2]); // OUTPUT: [3]
  print([1, 2, 3] - [1, 2, 3]); // OUTPUT: []
  print([1, 2, 3] - [3, 2, 1]); // OUTPUT: []
  print(['Foo', 'Bar', 'Baz'] - ['Baz', 'Bar']); // OUTPUT: [Foo]
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) => where((e) => !other.contains(e));
}
