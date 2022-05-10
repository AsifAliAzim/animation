import 'package:flutter/material.dart';

class RPSCustomPainterTwo extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.0250000,size.height*0.0979021);
    path0.cubicTo(size.width*0.0231250,size.height*0.7283217,size.width*0.0231250,size.height*0.7283217,size.width*0.0225000,size.height*0.9384615);
    path0.quadraticBezierTo(size.width*0.0243750,size.height*0.9800699,size.width*0.0893750,size.height*0.9825175);
    path0.lineTo(size.width*0.9100000,size.height*0.9825175);
    path0.quadraticBezierTo(size.width*0.9737500,size.height*0.9849650,size.width*0.9700000,size.height*0.9356643);
    path0.cubicTo(size.width*0.9700000,size.height*0.7866434,size.width*0.9700000,size.height*0.4895804,size.width*0.9700000,size.height*0.3395804);
    path0.quadraticBezierTo(size.width*0.9730750,size.height*0.3253846,size.width*0.9488500,size.height*0.3225594);
    path0.lineTo(size.width*0.0894000,size.height*0.0805594);
    path0.quadraticBezierTo(size.width*0.0245250,size.height*0.0617902,size.width*0.0250000,size.height*0.0979021);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

