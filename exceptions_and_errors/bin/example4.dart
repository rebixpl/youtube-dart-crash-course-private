// Finally block

void main(List<String> args) async {
  final db = Database();

  try {
    await db.getData();
  } on DatabaseNotOpenException {
    print("We forgot to open the database");
  } finally {
    // Finally block is always executed irrespective of whether an exception is thrown or not
    await db.close();
  }

  // OUTPUT: We forgot to open the database
  // OUTPUT: Database closed // This is printed even though an exception was thrown
}

class Database {
  bool _isDbOpen = false;

  Future<void> openDb() {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        _isDbOpen = true;
        print('Database opened');
      },
    );
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      Duration(seconds: 1),
      () => 'Data',
    );
  }

  Future<void> close() {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        _isDbOpen = false;
        print('Database closed');
      },
    );
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException: Database is not open';
}
