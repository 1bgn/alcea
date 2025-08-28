import 'package:asker/common/MyColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AskWidget extends StatelessWidget{
  final String text;
  final int number;

  const AskWidget({super.key, required this.text, required this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: MyColors.borderColor,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8),),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            child: Text(
              "Вопрос $number:",
              style: TextStyle(
                color: MyColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 30 / 20,
                letterSpacing: 0,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xff333333),
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 30 / 20,
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }

}