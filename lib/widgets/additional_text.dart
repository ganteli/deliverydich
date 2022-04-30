import 'package:flutter/cupertino.dart';

class AdditionalText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  AdditionalText({Key? key, this.color = const  Color(0x7F000000),
    required this.text,
    this.size = 12,
    this.height = 1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,

        style: TextStyle(
            fontFamily: 'Roboto',
            color: color,
            fontSize: size,
            height: height

        )
    );
  }
}