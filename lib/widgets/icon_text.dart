import 'package:deliverydich/utils/dimensions.dart';
import 'package:deliverydich/widgets/additional_text.dart';
import 'package:flutter/cupertino.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconTextWidget({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24,),
        SizedBox(width: 5),
        AdditionalText(text: text),
      ],
    );
  }
}
