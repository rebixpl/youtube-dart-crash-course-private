// Lists

/* Here is the explanation for the code above:
1. The map method iterates over the list and applies a function to each element.
2. The fold method iterates over the list and applies a function to each element, 
but it also carries a value between iterations. This value is called an accumulator, 
and you can use it to carry the result of the previous iteration. */

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
