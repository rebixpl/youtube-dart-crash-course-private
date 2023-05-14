// Enumerations

/* Here is the explanation for the code above:
1. In the above code, we have created an enum AnimalType that has three values 
rabbit, dog, and cat.
2. We have created a class Animal that has two properties name and type. The type 
property is an AnimalType.
3. We have created an instance woof of Animal class with the name Woof and type dog.
4. We have checked whether the type of woof is cat or not. Since the type of woof 
is dog, it prints Woof is not a cat.
5. We have used switch case to check the type of woof. Since the type of woof is
 dog, it prints This is a dog.
6. We can use the enum AnimalType in a class, function, and also a switch case. */

void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.dog,
  );

  if (woof.type == AnimalType.cat) {
    print('Woof is a cat');
  } else {
    print('Woof is not a cat');
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({
    required this.name,
    required this.type,
  });
}
