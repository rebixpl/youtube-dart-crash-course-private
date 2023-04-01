// Converting Strings to Enums

void main(List<String> args) {
  print(
    AnimalType.values,
  ); // OUTPUT: [AnimalType.rabbit, AnimalType.dog, AnimalType.cat]
  print(
    AnimalType.cat.name,
  ); // OUTPUT: cat

  print("-----------------");
  print(animalType(fromStr: 'cat')); // OUTPUT; AnimalType.cat
  print(animalType(fromStr: 'monkey')); // OUTPUT: Bad state: No element, null

  print("-----------------");
  describe(animalType(fromStr: 'rabbit')); // OUTPUT: This is a rabbit
  describe(animalType(fromStr: 'dog')); // OUTPUT: This is a dog
  describe(animalType(fromStr: 'cat')); // OUTPUT: This is a cat
  describe(animalType(
      fromStr: 'horse')); // OUTPUT: Bad state: No element, Unknown animal
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
    default:
      print('Unknown animal');
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    print(e);
    return null;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
