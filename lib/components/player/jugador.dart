import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../game/constantes.dart';

class Jugador extends RectangleComponent with KeyboardHandler {



    double dirX = 0;   // -1 izquierda, 0 quieto, 1 derecha



    Jugador({required Vector2 position})
    : super(

    position: position,
    size: Vector2(14, 22),
    paint: Paint()..color = const Color(0xFFFF9F1C),

    );



    @override
    void update(double dt) {

    super.update(dt);
    position.x += dirX * velocidadJugador * dt;

    }



    @override
    bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {

    final izquierda = keysPressed.contains(LogicalKeyboardKey.arrowLeft) ||
    keysPressed.contains(LogicalKeyboardKey.keyA);
    final derecha = keysPressed.contains(LogicalKeyboardKey.arrowRight) ||
    keysPressed.contains(LogicalKeyboardKey.keyD);
    
    dirX = (derecha ? 1 : 0) - (izquierda ? 1 : 0);
    return true;

    }

}
