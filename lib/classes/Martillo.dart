import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flutter/material.dart';

class Martillo extends PositionComponent {
  late TextComponent textComponent;

  Martillo({
    required super.position,
    required super.size,
    super.children,
  }) : super();

  double t = 0;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    final colorA = Paint()..color = Color.fromARGB(255, 82, 81, 81);
    final colorB = Paint()..color = Color.fromARGB(255, 121, 72, 26);
    

    var arriba = Path()
      ..moveTo(15, 11)
      ..lineTo(24, 11)
      ..lineTo(31, 16)
      ..lineTo(60, 16)
      ..lineTo(75, 22)
      ..lineTo(84, 28)
      ..lineTo(89, 34)
      ..lineTo(90, 40)
      ..lineTo(83, 32)
      ..lineTo(74, 28)
      ..lineTo(60, 28)
      ..lineTo(60, 36)
      ..lineTo(40, 36)
      ..lineTo(40, 28)
      ..lineTo(30, 28)
      ..lineTo(23, 35)
      ..lineTo(15, 35)
      ..lineTo(15, 11)
      ..close();

    var cuerpo = Path()
      ..moveTo(40, 35)
      ..lineTo(60, 35)
      ..lineTo(61, 124)
      ..lineTo(40, 125)
      ..lineTo(40, 35)
      ..close();

    canvas.drawPath(cuerpo, colorB);
    canvas.drawPath(arriba, colorA);
  }
}
