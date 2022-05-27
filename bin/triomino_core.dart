import 'dart:io';

import 'package:triomino_core/game.dart';
import 'package:triomino_core/game_event.dart';
import 'package:triomino_core/game_utils.dart';
import 'package:triomino_core/lay_piece_event_builder.dart';
import 'package:triomino_core/models/identifier.dart';
import 'package:triomino_core/models/piece.dart';
import 'package:triomino_core/models/player.dart';
import 'package:triomino_core/rules/errors/game_rule_error.dart';
import 'package:triomino_core/rules/errors/invalid_event_error.dart';
import 'package:triomino_core/rules/errors/invalid_quantity_of_players_error.dart';

void main(List<String> arguments) {
  final utils = GameUtils();
  final game = Game();

  do {
    run(game, utils);
  } while (true);
}

void run(Game game, GameUtils utils) {
  if (game.hasGameStarted) {
    playMenu(game, utils);
  } else {
    int selection = registrationMenu();

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
      case 4:
        editPlayer(game);
        break;
      case 5:
        printHeader('Logs');
        utils.show(game.events);
        break;
      case 6:
        startGame(game);
        break;
    }
  }
}

void playMenu(Game game, GameUtils utils) {
  printScore(game);
  showPlayOptions(game, utils);

  Player? playerOnTurn = game.playerOnTurn;
  playerOnTurn ??= choosePlayerToPlay(game);

  final piece = playPiece();
  if (piece == null) return;

  final layPieceEvent = addBonus(LayPieceEventBuilder(
    player: playerOnTurn,
    piece: piece,
    rule: game.ruleBook.bonusGameRule,
  )).build();

  try {
    game.add(layPieceEvent);
  } on GameRuleError catch (error) {
    print(error.message);
    return playMenu(game, utils);
  }
}

void showPlayOptions(Game game, GameUtils utils) {
  print('1 - Play piece');
  print('2 - Show Logs');
  print('0 - Exit game');

  try {
    switch (int.parse(stdin.readLineSync() ?? '')) {
      case 0:
        exit(0);
      case 1:
        return;
      case 2:
        utils.show(game.events);
        showPlayOptions(game, utils);
    }
  } on FormatException {
    print('Invalid option.');
    showPlayOptions(game, utils);
  }
}

Player choosePlayerToPlay(Game game) {
  print('Choose a player to play: ');
  for (final entry in game.remainingPlayersToPlay.asMap().entries) {
    print('${entry.key} - ${entry.value.name}');
  }
  try {
    int selection = int.parse(stdin.readLineSync() ?? '');
    return game.remainingPlayersToPlay[selection];
  } on FormatException {
    print('Invalid selection.');
    return choosePlayerToPlay(game);
  } on RangeError {
    print('Invalid selection.');
    return choosePlayerToPlay(game);
  }
}

int registrationMenu() {
  printHeader('Menu');
  print('1 - Show players');
  print('2 - Add player');
  print('3 - Remove player');
  print('4 - Edit player');
  print('5 - Show logs');
  print('6 - Start game');
  print('0 - Exit');

  String? value = stdin.readLineSync();
  try {
    int selection = int.parse(value ?? '');
    if (selection < 0 || selection > 6) throw ArgumentError();
    return selection;
  } on FormatException catch (error) {
    print('Invalid option: ${error.message}');
    return registrationMenu();
  } on ArgumentError catch (error) {
    print('Invalid option: ${error.message}');
    return registrationMenu();
  }
}

void addPlayer(Game game) {
  printHeader('Adding Player');
  print('Player\'s name: ');
  final name = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    return print('Invalid name');
  }

  try {
    game.add(AddPlayerEvent(Player(name: name), id: Identifier.uniq()));
  } on GameRuleError catch (error) {
    print(error.message);
  }
}

void editPlayer(Game game) {
  showPlayers(game, titleHeader: 'Edit Player');
  final String? selection = stdin.readLineSync();
  try {
    final index = int.parse(selection ?? '');
    final allAddPlayerEvent = game.events.whereType<AddPlayerEvent>();
    final addPlayerEvent = allAddPlayerEvent.elementAt(index);

    print('New Player\'s name: ');
    final name = stdin.readLineSync();
    if (name == null || name.isEmpty) {
      return print('Invalid name');
    }

    try {
      final newAddPlayerEvent = addPlayerEvent.copyWith.player(name: name);
      final allEvents = List.of(game.events);
      final index = game.events.indexOf(addPlayerEvent);
      allEvents[index] = newAddPlayerEvent;
      game.events = allEvents;
    } on InvalidEventError catch (error) {
      print(error.message);
    }
  } on FormatException catch (error) {
    return print('Invalid selection: ${error.message}');
  } on RangeError catch (error) {
    return print('Invalid selection: ${error.message}');
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
    final playerToRemove = game.players[selection];
    final eventToRemove =
        events.firstWhere((element) => element.player == playerToRemove);

    game.remove(eventToRemove);
    print('player removed successfully');
  } on FormatException catch (error) {
    return print('Invalid selection: ${error.message}');
  } on RangeError catch (error) {
    return print('Invalid selection: ${error.message}');
  } on InvalidQuantityOfPlayersError catch (error) {
    return print(error.message);
  }
}

void showPlayers(Game game, {String titleHeader = 'Players'}) {
  printHeader(titleHeader);
  for (final entry in game.players.asMap().entries) {
    print('${entry.key} - ${entry.value.name}');
  }
}

void startGame(Game game) {
  try {
    game.add(StartGameEvent(id: Identifier.uniq()));
  } on GameRuleError catch (error) {
    print(error.message);
  }
}

void printScore(Game game) {
  printHeader('Score');
  for (final status in game.playerStatuses) {
    // todo: implement score
    print(
        '${status.player.name}. Played pieces: ${status.playedPieces.length}. Points: ${status.score}');
  }
}

void printAvailablePieces(Game game) {
  // TODO: implement it
  printHeader('Available pieces');
  // for (final piece in game.availablePieces) {
  //   print(piece);
  // }
}

Piece? playPiece() {
  final pieceRegex = RegExp(r'(\d+)');

  print(
      'Inform the piece to play in the format 1-2-3 (Regular piece) or 3 (Triple 3).');
  final pieceStringRepresentation = stdin.readLineSync();

  if (pieceStringRepresentation == null) {
    print('Wrong format. Supported formats: \n1-2-3 \n3');
    return null;
  }

  try {
    final matches = pieceRegex.allMatches(pieceStringRepresentation);

    if (matches.length == 1) {
      int side = int.parse(matches.first.group(1)!);
      return Piece.triple(side);
    }

    if (matches.length == 3) {
      final listOfMatches = matches.toList();
      int side1 = int.parse(listOfMatches[0].group(1)!);
      int side2 = int.parse(listOfMatches[1].group(1)!);
      int side3 = int.parse(listOfMatches[2].group(1)!);

      return Piece(side1, side2, side3);
    }

    print('Wrong format. Supported formats: \n1-2-3 \n3');
    return null;
  } on GameRuleError catch (error) {
    print(error);
  }
  return null;
}

LayPieceEventBuilder addBonus(LayPieceEventBuilder builder) {
  print("Would you like to add a bonus?");
  print("1 - hexagon");
  print("2 - bridge");
  print("0 - no bonus");

  try {
    final int selection = int.parse(stdin.readLineSync() ?? '');
    switch (selection) {
      case 0:
        return builder;
      case 1:
        return addBonus(builder.addBonus(LayPieceBonusType.hexagon));
      case 2:
        return addBonus(builder.addBonus(LayPieceBonusType.bridge));
      default:
        throw ArgumentError();
    }
  } on FormatException catch (error) {
    print('Invalid option: ${error.message}');
    return addBonus(builder);
  } on ArgumentError catch (error) {
    print('Invalid option: ${error.message}');
    return addBonus(builder);
  }
}
