import 'package:flutter/material.dart';

class RPSCustomPainterOne extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width*0.0725000,size.height*0.0139860);
    path0.cubicTo(size.width*0.0253250,size.height*0.0127273,size.width*0.0228000,size.height*0.0190210,size.width*0.0239500,size.height*0.0314965);
    path0.cubicTo(size.width*0.0229000,size.height*0.2000559,size.width*0.0250000,size.height*0.5230769,size.width*0.0250000,size.height*0.6881119);
    path0.cubicTo(size.width*0.0261750,size.height*0.7041958,size.width*0.0370750,size.height*0.7035524,size.width*0.0475000,size.height*0.7104895);
    path0.quadraticBezierTo(size.width*0.2373437,size.height*0.7658217,size.width*0.8068750,size.height*0.9318182);
    path0.quadraticBezierTo(size.width*0.9587500,size.height*0.9912587,size.width*0.9625000,size.height*0.9020979);
    path0.cubicTo(size.width*0.9643750,size.height*0.6842657,size.width*0.9681250,size.height*0.2486014,size.width*0.9700000,size.height*0.0307692);
    path0.quadraticBezierTo(size.width*0.9690000,size.height*0.0102657,size.width*0.9275000,size.height*0.0111888);
    path0.quadraticBezierTo(size.width*0.7137500,size.height*0.0118881,size.width*0.0725000,size.height*0.0139860);
    path0.close();
    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}





