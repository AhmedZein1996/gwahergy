import 'package:flutter/material.dart';

class AuthCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(
      size.width * 1.159655,
      size.height * 0.9758443,
    );
    path.cubicTo(
      size.width * 1.626035,
      size.height * 0.8838626,
      size.width * 1.527128,
      size.height * 0.7122766,
      size.width * 1.637321,
      size.height * 0.4989872,
    );
    path.cubicTo(
      size.width * 1.747516,
      size.height * 0.2856978,
      size.width * 1.748723,
      size.height * 0.2017527,
      size.width * 1.565462,
      size.height * 0.03804194,
    );
    path.cubicTo(
      size.width * 1.382201,
      size.height * -0.1256692,
      size.width * 1.040022,
      size.height * -0.2018956,
      size.width * 0.7684946,
      size.height * -0.03586648,
    );
    path.cubicTo(
      size.width * 0.4969647,
      size.height * 0.1301621,
      size.width * 0.2684584,
      size.height * 0.09998077,
      size.width * 0.1093614,
      size.height * 0.2257271,
    );
    path.cubicTo(
      size.width * -0.04973560,
      size.height * 0.3514744,
      size.width * -0.04313804,
      size.height * 0.5114799,
      size.width * 0.2004571,
      size.height * 0.6378498,
    );
    path.cubicTo(
      size.width * 0.4440516,
      size.height * 0.7642198,
      size.width * 0.5845543,
      size.height * 1.089289,
      size.width * 1.159655,
      size.height * 0.9758443,
    );
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = const Color(0xFFF2F8E8);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AuthCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(
      size.width * 0.3212791,
      size.height * 1.896962,
    );
    path.cubicTo(
      size.width * 0.8914718,
      size.height * 1.739031,
      size.width * 0.7705482,
      size.height * 1.444421,
      size.width * 0.9052691,
      size.height * 1.078208,
    );
    path.cubicTo(
      size.width * 1.039993,
      size.height * 0.7119937,
      size.width * 1.041468,
      size.height * 0.5678616,
      size.width * 0.8174153,
      size.height * 0.2867730,
    );
    path.cubicTo(
      size.width * 0.5933621,
      size.height * 0.005683679,
      size.width * 0.1750186,
      size.height * -0.1251943,
      size.width * -0.1569502,
      size.height * 0.1598736,
    );
    path.cubicTo(
      size.width * -0.4889203,
      size.height * 0.4449403,
      size.width * -0.7682890,
      size.height * 0.3931195,
      size.width * -0.9628007,
      size.height * 0.6090252,
    );
    path.cubicTo(
      size.width * -1.157312,
      size.height * 0.8249308,
      size.width * -1.149246,
      size.height * 1.099657,
      size.width * -0.8514286,
      size.height * 1.316632,
    );
    path.cubicTo(
      size.width * -0.5536113,
      size.height * 1.533607,
      size.width * -0.3818306,
      size.height * 2.091745,
      size.width * 0.3212791,
      size.height * 1.896962,
    );
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = const Color(0xFFF2F8E8);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}



//Add this CustomPaint widget to the Widget Tree
//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Paint paint = Paint()..style=PaintingStyle.fill;
paint.color = const Color(0xffFFD700).withOpacity(1.0);
canvas.drawOval(Rect.fromCenter(center:Offset(size.width*0.2966752,size.height*0.1183879),width:size.width*0.8951407,height:size.height*1.259446),paint);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}
class RPS2CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()..style=PaintingStyle.fill;
    paint.color = const Color(0xff24687D).withOpacity(1.0);
    canvas.drawOval(Rect.fromCenter(center:Offset(size.width*0.7105943,size.height*0.7847534),width:size.width*0.9043928,height:size.height*1.121076),paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}