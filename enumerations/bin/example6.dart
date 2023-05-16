// Enumeration with Mixins

/* This Dart code defines an enumeration called AnimalType with three values 
(cat, dog, and fish) and a mixin called CanJump that adds a jump() method to any 
class that implements it. The AnimalType enumeration is mixed in with the CanJump 
mixin, allowing each animal type to jump if it has feet (represented by feetCount 
property). When executed, this code will print "Jumped" for AnimalType.dog and 
AnimalType.cat but throw an exception for AnimalType.fish, since fish cannot jump.*/

void main(List<String> args) {
  AnimalType.dog.jump();
  AnimalType.cat.jump();

  try {
    AnimalType.fish.jump();
  } catch (e) {
    print(e);
  }
}

mixin CanJump {
  int get feetCount;

  void jump() {
    if (feetCount < 1) {
      throw Exception('Cannot jump');
    } else {
      print('Jumped');
    }
  }
}

enum AnimalType with CanJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;
  const AnimalType({required this.feetCount});
}
