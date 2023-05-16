// Sum of Iterable

void main(List<String> args) {
  print([1, 2, 3].sum); // OUTPUT: 6
  print([2.2, 3.3, 4.4].sum); // OUTPUT: 9.9

  print([1, 2, 3].sum.runtimeType); // OUTPUT: int
  print([2.2, 3.3, 4.4].sum.runtimeType); // OUTPUT: double
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
