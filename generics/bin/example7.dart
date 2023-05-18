// Generic Classes with Generic Extensions

void main(List<String> args) {
  const tuple = Tuple(1, 20);
  print(tuple); // OUTPUT: Tuple(1, 20)
  final swapped = tuple.swap();
  print(swapped); // OUTPUT: Tuple(20, 1)
  const tuple2 = Tuple('a', 2);
  print(tuple2.runtimeType); // OUTPUT: Tuple<String, int>
  final swapped2 = tuple2.swap();
  print(swapped2.runtimeType); // OUTPUT: Tuple<int, String>

  const tuple3 = Tuple(1, 20.2);
  print(tuple3); // OUTPUT: Tuple(1, 20.2)
  final swapped3 = tuple3.swap();
  print(swapped3); // OUTPUT: Tuple(20.2, 1)
  print(tuple3.sum); // OUTPUT: 21.2
  print(swapped3.sum); // OUTPUT: 21.2
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple(
    this.left,
    this.right,
  );

  @override
  String toString() => 'Tuple($left, $right)';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
