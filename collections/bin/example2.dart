import 'package:collection/collection.dart';
// SETSimage.png

/* Here is the exp
lanation for the code above:
1. Sets are unordered collections of unique items
2. Unlike lists, sets are not indexable
3. Sets are mutable, meaning that we can add and remove items from them
4. Sets are not subscriptable
5. Unlike lists, sets are not ordered
6. Sets are not subscriptable
7. Sets are not indexable
8. Sets don't allow duplicates
9. We can use the spread operator to convert a list to a set
10. We can use the Set constructor to convert a list to a set
11. We can use the Set.from constructor to convert a list to a set
12. We can use the Set.from constructor to convert a list of strings to a set of 
integers
13. If the set contains the item, the add method does nothing
14. We can use the contains method to check if a set contains an item
15. We can use the == operator to check if two sets are equal
16. We can use the SetEquality class to check if two sets are equal
17. The SetEquality class is part of the collection package
18. The SetEquality class has a hash algorithm that's optimized for sets
19. The SetEquality class doesn't care about the order of the items in the sets
20. The SetEquality class is not part of the Dart SDK
21. We can use the .equals method of the SetEquality class to check if two sets 
are equal
22. We can use the == operator to compare two sets
23. The == operator doesn't care about the order of the items in the sets
24. We can use the .equals method of the ListEquality class to check if two lists 
are equal
25. The .equals method of the ListEquality class doesn't care about the order of 
the items in the sets
26. The .equals method of the ListEquality class is not part of the Dart SDK
27. The .equals method of the ListEquality class is part of the collection package
28. The .equals method of the ListEquality class has a hash algorithm that's 
optimized for lists
29. If we want to use the .equals method of the ListEquality class, we have to 
import the collection package */

// SETS
// dart pub add collection
void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};
  names.add('Foo');
  print(names);

  print('-------------------');
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  final uniqueNames = {...names2};
  print(uniqueNames);

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('---------------------');

  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('Did not find Foo');
  }
  print('---------------------');

  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};
  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal'); // OUTPUT: Ages are not equal
  }
  print('---------------------');
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal'); // OUTPUT: Ages are equal
  } else {
    print('Ages are not equal');
  }
  print('---------------------');
  final ages3 = {40, 30, 20};
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('---------------------');
}
// Waldemar's MacBook Pro