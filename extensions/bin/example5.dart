// Finding and Mapping Keys and Values on Map

const json = {
  'name': 'Foo Bar',
  'age': 18,
};

void main(List<String> args) {
  final String? ageAsString = json.find<int>(
    'age',
    (int age) => age.toString(),
  );

  print(ageAsString); // 18
  print(ageAsString.runtimeType); // String

  final String? helloName = json.find(
    'name',
    (String name) => 'Hello $name',
  );

  print(helloName); // Hello Foo Bar
  print(helloName.runtimeType); // String

  final String? address = json.find(
    'address',
    (String address) => 'You live at $address',
  );
  print('address = $address'); // address = null
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(K key, R? Function(T value) cast) {
    final value = this[key];
    if (value is T && value != null) {
      return cast(value);
    } else {
      return null;
    }
  }
}
