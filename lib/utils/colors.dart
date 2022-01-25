import 'package:flutter/material.dart';

/*
Colors Palette :
CFE8EF
C6DBF0
AED1E6
A0C4E2
85C7DE
 */
//               **------ => Paste digit here
const int c1 = 0xFFCFE8EF;
const int c2 = 0xFFC6DBF0;
const int c3 = 0xFFAED1E6;
const int c4 = 0xFFA0C4E2;
const int c5 = 0xFF85C7DE;

@immutable
class ApplicationColors extends StatelessWidget {
  static MaterialColor matColor1 = ApplicationColors.computeMaterielColor(c1);
  static MaterialColor matColor2 = ApplicationColors.computeMaterielColor(c2);
  static MaterialColor matColor3 = ApplicationColors.computeMaterielColor(c3);
  static MaterialColor matColor4 = ApplicationColors.computeMaterielColor(c4);
  static MaterialColor matColor5 = ApplicationColors.computeMaterielColor(c5);
  static const Color color1 = Color(c1);
  static const Color color2 = Color(c2);
  static const Color color3 = Color(c3);
  static const Color color4 = Color(c4);
  static const Color color5 = Color(c5);

  const ApplicationColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  static MaterialColor computeMaterielColor(int hex){
    Color newColor = Color(hex);
    Map<int, Color> color =
    {
      50: Color.fromRGBO(newColor.red,newColor.green,newColor.green, .1),
      100:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .2),
      200:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .3),
      300:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .4),
      400:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .5),
      500:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .6),
      600:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .7),
      700:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .8),
      800:Color.fromRGBO(newColor.red,newColor.green,newColor.green, .9),
      900:Color.fromRGBO(newColor.red,newColor.green,newColor.green, 1),
    };
    return MaterialColor(hex, color);
  }
}
