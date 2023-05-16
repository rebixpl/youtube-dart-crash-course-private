// Iterables

/* Here is the explanation for the code above:
1. Iterable.generate() method: This method returns an iterable containing count 
elements that are created by calling generator with the indices 0 through 
count - 1 in order.
2. iterable.take() method: This method takes the first n elements from this iterable.
3. for-in loop: This loop iterates over the elements of an iterable.
4. Dart uses lazy evaluation, which means the code will not be executed until it 
is actually needed.
5. The output of the program is:
Get name got called
John #0
Get name got called
John #1 */

void main(List<String> args) {
  final Iterable iterable = Iterable.generate(
    20,
    (i) => getName(i),
  );
  // print(iterable);

  for (final name in iterable.take(2)) {
    print(name);
  }
}

String getName(int i) {
  print('Get name got called');
  return 'John #$i';
}
