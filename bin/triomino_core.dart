import 'dart:io';

import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_utils.dart';
import 'package:triomino_core/identifier.dart';
import 'package:triomino_core/player.dart';

void main(List<String> arguments) {
  final utils = GameUtils();
  final game = Game();

  do {
    int selection = menu();

    switch (selection) {
      case 0:
        exit(0);
      case 1:
        showPlayers(game);
        break;
      case 2:
        addPlayer(game);
        break;
      case 3:
        removePlayer(game);
        break;
      case 5:
        printHeader('Logs');
        utils.show(game.events);
    }
  } while (true);
}

int menu() {
  printHeader('Menu');
  print('1 - Show players');
  print('2 - Add player');
  print('3 - Remove player');
  print('4 - Edit player');
  print('5 - Show logs');
  print('0 - Exit');

  String? value = stdin.readLineSync();
  try {
    int selection = int.parse(value ?? '');
    if (selection < 0 || selection > 5) throw ArgumentError();
    return selection;
  } on FormatException {
    print('Invalid option.');
    return menu();
  } on ArgumentError {
    print('Invalid option.');
    return menu();
  }
}

void addPlayer(Game game) {
  printHeader('Adding Player');
  print('Player\'s name: ');
  final name = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    return print('Invalid name');
  }

  final isValid =
      game.add(AddPlayerEvent(Player(name: name), id: Identifier.uniq()));

  if (!isValid) {
    print('Invalid name');
  }
}

void printHeader(String title) {
  print('========== $title ==========');
}

void removePlayer(Game game) {
  showPlayers(game, titleHeader: 'Select the player to remove');

  try {
    final selection = int.parse(stdin.readLineSync() ?? '');

    final events = game.events.whereType<AddPlayerEvent>();
    final eventToRemove = events
        .firstWhere((element) => element.player == game.players[selection]);

    final success = game.remove(eventToRemove);
    if (!success) {
      return print('Error removing player');
    }

    print('player removed successfully');
  } on FormatException {
    return print('Invalid selection');
  }
}

void showPlayers(Game game, {String titleHeader = 'Players'}) {
  printHeader(titleHeader);
  for (final entry in game.players.asMap().entries) {
    print('${entry.key} - ${entry.value.name}');
  }
}
