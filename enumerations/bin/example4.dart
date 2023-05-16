// Converting Strings to Enums

/* /* Here is the explanation for the code above:
1. The first print statement prints all the possible values of the enum.
2. The second print statement prints the name of the enum.
3. The animalType() function converts the string to the enum value. It returns 
null if the string is not a valid enum value.
4. The describe() function takes an enum value as an argument and prints the 
description of the animal type. It prints Unknown animal if the argument is null. */*/

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
