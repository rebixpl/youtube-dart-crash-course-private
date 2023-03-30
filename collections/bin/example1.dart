void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  names.map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);

  print('--------------------');

  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      int previousValue,
      int thisValue,
    ) =>
        previousValue + thisValue,
  );
  print(sum);

  print('--------------------');

  final totalLength = names.fold(
    0,
    (
      totalLength,
      str,
    ) =>
        totalLength + str.length,
  );
  print(totalLength);
  print('--------------------');

  final result = names.fold(
    '',
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}'.trimLeft(),
  );
  print(result);
}
