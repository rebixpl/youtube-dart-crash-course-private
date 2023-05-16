import 'package:collection/collection.dart';
// Unmodifiable List Views

/* Here is the explanation for the code above:
1. We create a regular List called names with two elements: John and Jane.
2. We add the element Jack to the list.
3. We create an unmodifiable List view called readOnlyList using the 
UnmodifiableListView constructor.
4. We try to add the element Jill to the unmodifiable List view, but we get 
an error because the list is unmodifiable.

The UnmodifiableListView constructor takes a List as a parameter and returns 
an unmodifiable List view of that List. 
The unmodifiable List view is a read-only view of the List. 
Any changes made to the List view will be reflected in the underlying List, 
and vice versa. 
The List view does not allow for any modifications to be made to it, such as 
adding or removing elements. 
If you try to modify the List view, you will get an error. */

void main(List<String> args) {
  final names = ['John', 'Jane'];
  names.add('Jack');

  try {
    final readOnlyList = UnmodifiableListView(names);
    print(readOnlyList); // OUTPUT: [John, Jane, Jack]
    readOnlyList.add('Jill');
  } catch (e) {
    print(e); // Unsupported operation: Cannot add to an unmodifiable list
  }
}
