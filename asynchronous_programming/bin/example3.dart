// Future Chaining

void main(List<String> args) async {
  // Example 1
  // final length = await calculateLength(await getFullName());
  // print(length);

  // Example 2
  // getFullName().then(
  //   (value) => calculateLength(value).then(
  //     (value) => print(value), // OUTPUT: 8
  //   ),
  // );

  // Example 3
  final length = await getFullName().then(
    (value) => calculateLength(value),
  );
  print(length); // OUTPUT: 8
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'John Doe',
    ); // Future. delayed

Future<int> calculateLength(String value) => Future.delayed(
      Duration(seconds: 1),
      () => value.length,
    );
