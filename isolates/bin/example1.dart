//

import 'dart:isolate';

void main(List<String> args) {}

void getMessage(SendPort sp) async {
  await for (final now in Stream.periodic(
    const Duration(milliseconds: 200),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}
