import 'package:flame/game.dart';

import 'package:flutter/material.dart';

import 'game/mi_juego.dart';

void main() {

  final juego = MiJuego();

  runApp(

    MaterialApp(
      home: Scaffold(
        body: GameWidget(game: juego),
      ),
    ),
  );

}

