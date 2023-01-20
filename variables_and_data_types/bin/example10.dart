// late variables

void main(List<String> args) {
  /// late variables are initialized when they are used

  late final myValue = 10;
  print(myValue); // 10

  late final yourValue = getValue();
  print("we are here");
  print(yourValue);
  print(yourValue);

  /// EXPECTATIONS:
  /// getValue called
  /// we are here
  /// 10
  /// getValue called
  /// 10

  /// REAL OUTPUT:
  /// we are here
  /// getValue Called
  /// 10
  /// 10
}

int getValue() {
  print('getValue called');
  return 10;
}
