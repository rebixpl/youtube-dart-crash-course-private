// Extending Enums

void main(List<String> args) {
  print(AnimalType.cat.nameContainsUpperCaseLetters); // OUTPUT: false
  print(AnimalType.dog.nameContainsUpperCaseLetters); // OUTPUT: false
  print(AnimalType.goldFish.nameContainsUpperCaseLetters); // OUTPUT: true
}

enum AnimalType {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetters => name.contains(RegExp(r'[A-Z]'));
}
