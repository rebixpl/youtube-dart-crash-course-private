import 'package:collection/collection.dart';

// The Collection Package
void main(List<String> args) {
  testBoolList();
  print('------------------');
  testCanonicalizedMap();
  print('------------------');
  testCombinedIterableView();
  print('------------------');
  testCombinedListView();
  print('------------------');
  testCombinedMapView();
  print('------------------');
  testMapMerging();
}

void testMapMerging() {
  const info1 = {
    'name': 'John 1',
    'age': 30,
    'height': 1.8,
  };
  const info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };
  final merge = mergeMaps(
    info1,
    info2,
    value: (one, two) => two,
  );
  print(merge);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap); // OUTPUT: {a: 1, b: 2, c: 3, d: 6, e: 9}
  print(combinedMap['a']); // OUTPUT: 1
  print(combinedMap['b']);
  print(combinedMap['c']); // OUTPUT: 3
  print(combinedMap['d']); // OUTPUT: 6
  print(combinedMap['e']);
  print(combinedMap['f']); // OUTPUT: null
  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e); // OUTPUT: Unsupported operation: Cannot modify unmodifiable map
  }
}

void testCombinedListView() {
  // CombinedListView is a view of a list of lists, and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];
  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);
  print(
      names); // OUTPUT: [Sven, Karl, Gustav, Sven, Karl, Ole, Sven, Karl, Pierre]
  if (names.contains('Sven')) {
    print('Sven is in the list'); // OUTPUT: Sven is in the list
  }
  try {
    names.removeAt(
        0); // OUTPUT: Unsupported operation: Cannot modify an unmodifiable List
  } catch (e) {
    print(e);
  }
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];
  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  two.add(40);
  print(combined); // OUTPUT: (1, 2, 3, 10, 20, 30, 40, 40, 50, 60)
  print(combined.length); // OUTPUT: 10
  print(combined.isEmpty); // OUTPUT: false
  print(combined.contains(5)); // OUTPUT: false
  print(combined.contains(10)); // OUTPUT: true
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'address': 'New York',
  };

  final cannonMap = CanonicalizedMap.from(info, (key) => key.split('').first);
  print(cannonMap); // {name: John, address: New York, sex: male}
}

void testBoolList() {
  /// BoolList is helpful when you are using thousands of boolean values, it takes
  /// only one byte to store boolean value
  final boolList = BoolList(10, growable: true);
  print(
    boolList,
  ); // OUTPUT: [false, false, false, false, false, false, false, false, false, false]

  boolList[3] = true;
  if (boolList[3] == true) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }

  boolList.length *= 2;
  print(
    boolList,
  ); // [false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
}
