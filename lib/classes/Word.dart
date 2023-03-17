import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flutter/material.dart';

class Word extends PositionComponent {
  //final Paint paint;
  //final FormaTypes forma;
  late TextComponent textComponent;

  Word({
    required super.position,
    //required this.paint,
    required super.size,
    //this.forma = FormaTypes.rectanguloVertical,
    super.children,
  }) : super();

  double t = 0;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    final rect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(100, 100), width: 130, height: 160),
      Radius.circular(20),
    );

    final rect1 = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(100, 150), width: 130, height: 90),
      Radius.circular(20),
    );

    final rect3 = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(100, 90), width: 130, height: 45),
      Radius.circular(0),
    );

    final rect4 = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(100, 135), width: 130, height: 45),
      Radius.circular(0),
    );


    final rect2 = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(50, 110), width: 90, height: 90),
      Radius.circular(9),
    );


    

    final molde = Paint()
      ..color = Color.fromARGB(255, 6, 143, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

      final molde1 = Paint()
      ..color = Color.fromARGB(255, 11, 49, 107)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

      final molde2 = Paint()
      ..color = Color.fromARGB(255, 27, 95, 197)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

      final molde3 = Paint()
      ..color = Color.fromARGB(255, 20, 73, 151)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

    final letra = Paint()
      ..color = Color.fromARGB(255, 0, 78, 180)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

    canvas.drawRRect(rect, molde);
    canvas.drawRRect(rect1, molde1);      
    canvas.drawRRect(rect3, molde2);  
    canvas.drawRRect(rect4, molde3);      
    canvas.drawRRect(rect2, letra);
    
    

  }
}


// import 'dart:ui';
// import 'package:flame/components.dart';
// import 'package:flutter/material.dart';

// class Word extends PositionComponent {
//   //final Paint paint;
//   //final FormaTypes forma;

//   Word({
//     required super.position,
//     //required this.paint,
//     required super.size,
//     //this.forma = FormaTypes.rectanguloVertical,
//     super.children,
//   }) : super();

//   double t = 0;

//   @override
//   void render(Canvas canvas) {
//     super.render(canvas);
    
//     // Obtener los valores de la posición y tamaño del rectángulo
//     final double x1 = position.x;
//     final double y1 = position.y;
//     final double x2 = position.x + size.x;
//     final double y2 = position.y + size.y;
//     final double radius = 10;

//     // Crear un rectángulo con esquinas redondeadas
//     final rect = Rect.fromPoints(Offset(x1, y1), Offset(x2, y2));
//     final rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
//       final paint = Paint()
//       ..color = Color.fromARGB(255, 221, 15, 15)
//       ..style = PaintingStyle.fill;
//     // Dibujar el rectángulo
//     canvas.drawRRect(rrect, paint);
//   }
// }
