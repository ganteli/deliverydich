import 'package:deliverydich/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class MainText extends StatelessWidget {
   Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  MainText({Key? key, this.color = const  Color(0xFF317ACD),
    required this.text,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size==0?Dimensions.font20:size,
        fontWeight: FontWeight.w400
      )
    );
  }
}
