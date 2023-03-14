// extending optional types

void main(List<String> args) {
  String? getFullNameOptional() {
    return "Bar foo";
  }

  String getFullName() {
    return 'Foo Bar';
  }

  final String fullName = getFullNameOptional() ?? getFullName();
  print(fullName); // OUTPUT: Bar foo

  final someName = getFullNameOptional();
  someName.describe(); // OUTPUT: String: Bar foo
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('The object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
