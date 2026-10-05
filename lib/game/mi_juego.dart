import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/input.dart';

import '../components/player/jugador.dart';

class MiJuego extends FlameGame with HasKeyboardHandlerComponents {


  MiJuego()
  : super(
  camera: CameraComponent.withFixedResolution(width: 640, height: 360),
  );


  late Jugador jugador;

  @override
  Color backgroundColor() => const Color.fromARGB(255, 61, 186, 236);


  @override
  Future<void> onLoad() async {
  
  camera.viewfinder.anchor = Anchor.topLeft; // (0,0) = esquina superior izquierda
  jugador = Jugador(position: Vector2(100, 100));
  world.add(jugador);

  }


}
