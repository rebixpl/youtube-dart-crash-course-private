// Futures

void main(List<String> args) async {
  final name1 = getName();
  final name2 = getName();
  print(name1);
  print(name2);

  print(await getUserName()); // OUTPUT: John Doe
  print(await getAddress()); // OUTPUT: 123 Main St
  print(await getNumber()); // OUTPUT: 555-555-5555
  print(await getCity()); // OUTPUT: New York
}

String getName() => 'Foo Bar';

Future<String> getUserName() async {
  return 'John Doe';
}

Future<String> getAddress() => Future.value('123 Main St');

Future<String> getNumber() => Future.delayed(
      Duration(seconds: 1),
      () => '555-555-5555',
    );

Future<String> getCity() async {
  // you have to use await inside an async function, so the future will be resolved
  // without the await, the future will not be resolved, and the 'New York' string
  // will be returned immediately
  await Future.delayed(Duration(seconds: 1));
  return 'New York';
}

// async keyword doesn't really contribute with anything here
Future<String> getZipCode() async => Future.delayed(
      Duration(seconds: 1),
      () => '12345',
    );
