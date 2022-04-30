import 'package:deliverydich/utils/colors.dart';
import 'package:deliverydich/utils/dimensions.dart';
import 'package:deliverydich/widgets/additional_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight/4.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?AdditionalText(size: Dimensions.font12,text: firstHalf):Column(
        children: [
          AdditionalText(color: AppColors.SCRIM_TUTORIAL, height: 1.8,text: hiddenText?(firstHalf + "..."):(firstHalf + secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText =!hiddenText;
              });
            },
            child: Row(
              children: [
                AdditionalText(size:Dimensions.font12, text: "Показать больше", color: AppColors.PRIMARY,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.PRIMARY,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
