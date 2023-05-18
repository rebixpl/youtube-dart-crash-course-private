// Constrained Generic Type Definitions

void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const brotherAndSisterAndMyFish = {
    'Brother': Person(),
    'Sister': Person(),
    'Fishy': Fish(),
  };

  final allValues = [
    momAndDad,
    brotherAndSisterAndMyFish,
  ];

  describe(allValues);
  // OUTPUT:
  // Person is breathing
  // Person is breathing
  // Person is breathing
  // Person is breathing
  // Fish is breathing
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void breathe() {
    print('Person is breathing');
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() {
    print('Fish is breathing');
  }
}
