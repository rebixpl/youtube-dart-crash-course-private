// Avoiding Constructor Initialization of Late Variables

/* This Dart code demonstrates two ways of initializing the membersCount property 
of a Family class based on a list of Person objects. The first implementation 
(WrongImplementationOfFamily) uses a late modifier and initializes membersCount 
in the constructor, which can lead to unexpected results. The second implementation 
(RightImplementationOfFamily) initializes membersCount immediately and avoids the 
use of late.
*/

void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongImplementationOfFamily(
    members: [
      johnDoe,
      janeDoe,
    ],
  );
  print(doeFamily);
  print(doeFamily.membersCount);

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Smith');
  final smithFamily = RightImplementationOfFamily(
    members: [
      johnSmith,
      janeSmith,
    ],
  );
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
