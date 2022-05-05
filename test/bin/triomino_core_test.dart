@Timeout(Duration(seconds: 2))
import 'package:test/test.dart';
import 'package:test_process/test_process.dart';

void main() {
  const exitMenuOption = 0;
  const addPlayerMenuOption = 3;

  group('CLI', () {
    test('remove players', () async {
      final process = await TestProcess.start(
        'dart',
        ['bin/triomino_core.dart'],
      );
      await waitForMenuBePrinted(process);
      process.stdin.writeln(addPlayerMenuOption);

      await expectLater(process.stdout, emitsThrough('0 - Player 1'));
      await expectLater(process.stdout, emitsThrough('1 - Player 2'));

      process.stdin.writeln(3); // Try to remove inexistent player

      await expectLater(process.stdout, emitsThrough('Invalid selection'));

      // process.stdin.writeAll([
      //   addPlayerMenuOption,
      //   3,
      // ], '\n');

      // // process.stdin.writeln(2); // Try to remove inexistent player
      // // await process.stdin.flush();

      await waitForMenuBePrinted(process);
      process.stdin.writeln(exitMenuOption);
      await process.shouldExit();
    });
  });
}

Future<void> waitForMenuBePrinted(TestProcess process) async {
  String next;
  do {
    next = await process.stdout.next;
  } while (next != '0 - Exit');
}
