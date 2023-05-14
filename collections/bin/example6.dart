// Mapping Lists to Iterables

/* Here is the explanation for the code above:
1. The names list is created with four elements.
2. The map() method is called on the names list. The map() method iterates over
   each element of the source list and returns a new iterable with the
   transformed values.
3. The map() method takes a callback function as an argument. The callback
   function is invoked for each element in the source list.
4. The callback function returns the transformed value for each element.
5. The map() method returns the transformed iterable.
6. The take() method is called on the returned iterable. The take() method
   returns the first n elements of the iterable.
7. The for loop iterates over each element of the iterable and prints it. */

void main(List<String> args) {
  const names = ['John', 'Jane', 'Jack', 'Jill'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });

  for (final name in upperCaseNames.take(2)) {
    print(name);
  }
}
