// Family Member Operators

void main(List<String> args) {
  final dad = FamilyMember(name: ' Dad');
  final mom = FamilyMember(name: 'Mom');
  final family = dad + mom;
  print(family);

  /// OUTPUT: Family (members = [Family Member (name =  Dad), Family Member (name = Mom)])
}

class FamilyMember {
  final String name;

  const FamilyMember({
    required this.name,
  });

  @override
  String toString() => 'Family Member (name = $name)';
}

class Family {
  final List<FamilyMember> members;

  const Family({
    required this.members,
  });

  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(
        members: [this, other],
      );
}
