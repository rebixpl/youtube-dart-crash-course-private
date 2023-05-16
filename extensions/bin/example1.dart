// Extending String and Int

void main(List<String> args) {
  final value = 20;
  final timesFour = value.timesFour;
  print(timesFour); // OUTPUT: 80

  print('Hello'.reversed); // OUTPUT: olleH
}

extension on int {
  int get timesFour => this * 4;
}

extension on String {
  String get reversed => split('').reversed.join();
}
