import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flutter/material.dart';

class Perro extends PositionComponent {
  late TextComponent textComponent;

  Perro({
    required super.position,
    required super.size,
    super.children,
  }) : super();

  double t = 0;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    final colorA = Paint()..color = Color.fromARGB(255, 90, 52, 26);

    final colorB = Paint()..color = Color.fromARGB(255, 145, 92, 56);

    final colorC = Paint()..color = Color.fromARGB(255, 236, 214, 200);

    final colorD = Paint()..color = Color.fromARGB(255, 248, 71, 71);

    var oreja1 = Path()
      ..moveTo(66, 77)
      ..lineTo(150, 13)
      ..lineTo(111, 142)
      ..lineTo(66, 142)
      ..close();

    var oreja2 = Path()
      ..moveTo(207, 11)
      ..lineTo(291, 78)
      ..lineTo(245, 143)
      ..lineTo(207, 11)
      ..close();

    var chompa = Path()
      ..moveTo(150, 11)
      ..lineTo(207, 11)
      ..lineTo(238, 119)
      ..lineTo(209, 146)
      ..lineTo(139, 146)
      ..lineTo(117, 125)
      ..lineTo(150, 11)
      ..close();

    var nar_p1 = Path()
      ..moveTo(139, 146)
      ..lineTo(154, 129)
      ..lineTo(193, 128)
      ..lineTo(208, 146)
      ..lineTo(139, 146)
      ..close();

    var nar_p2 = Path()
      ..moveTo(154, 128)
      ..lineTo(175, 142)
      ..lineTo(193, 128)
      ..lineTo(154, 128)
      ..close();

    var lengua = Path()
      ..moveTo(160, 146)
      ..lineTo(174, 159)
      ..lineTo(187, 147)
      ..lineTo(160, 146)
      ..close();

    var cola = Path()
      ..moveTo(13, 215)
      ..lineTo(98, 296)
      ..lineTo(13, 256)
      ..lineTo(13, 215)
      ..close();

    var cuerpo = Path()
      ..moveTo(39, 240)
      ..lineTo(129, 138)
      ..lineTo(139, 147)
      ..lineTo(206, 147)
      ..lineTo(206, 297)
      ..lineTo(97, 296)
      ..lineTo(39, 243)
      ..close();


    canvas.drawPath(oreja1, colorA);
    canvas.drawPath(oreja2, colorA);
    canvas.drawPath(chompa, colorB);
    canvas.drawPath(nar_p1, colorC);
    canvas.drawPath(nar_p2, colorA);
    canvas.drawPath(lengua, colorD);
    canvas.drawPath(cuerpo, colorB);
    canvas.drawPath(cola, colorA);
    
    
    // canvas.save(); // guarda la transformación actual

    // // rotar el cuadrado 45 grados alrededor de su centro
    // canvas.translate(100, -20);
    // canvas.rotate(45 * 3.1416 / 180); // convertir 45 grados a radianes
    // canvas.translate(-15, -15); // ajustar la posición del cuadrado después de la rotación
    // canvas.drawRRect(cuadrado5, color2);
    // canvas.restore(); // restaura la transformación original
  }
}

// import 'dart:ui';
// import 'package:flame/components.dart';
// import 'package:flame/geometry.dart';
// import 'package:flutter/material.dart';

// class Perro extends PositionComponent {
//   late TextComponent textComponent;

//   Perro({
//     required super.position,
//     required super.size,
//     super.children,
//   }) : super();

//   double t = 0;

//   @override
//   void render(Canvas canvas) {
//     super.render(canvas);

//     final circulo2 = RRect.fromRectAndRadius(
//       Rect.fromCenter(center: Offset(100, 100), width: 130, height: 130),
//       Radius.circular(100),
//     );

//     final cuadrado = RRect.fromRectAndRadius(
//       Rect.fromCenter(center: Offset(30, 100), width: 30, height: 30),
//       Radius.circular(6),
//     );

//     final cuadrado5 = RRect.fromRectAndRadius(
//       Rect.fromCenter(center: Offset(30, 100), width: 30, height: 30),
//       Radius.circular(6),
//     );

//     final color1 = Paint()
//       ..color = Color.fromARGB(255, 255, 255, 255)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4;

//     final color2 = Paint()
//       ..color = Color.fromARGB(255, 0, 0, 0)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4;

//     canvas.drawRRect(circulo2, color2);
//     canvas.drawRRect(cuadrado, color2);

//     canvas.save(); // guarda la transformación actual

//     // rotar el cuadrado 45 grados alrededor de su centro
//     canvas.translate(100, -20);
//     canvas.rotate(45 * 3.1416 / 180); // convertir 45 grados a radianes
//     canvas.translate(
//         -15, -15); // ajustar la posición del cuadrado después de la rotación
//     canvas.drawRRect(cuadrado5, color2);
//     canvas.restore(); // restaura la transformación original
//   }
// }
