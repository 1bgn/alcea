import 'package:asker/common/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

import '../../../../common/MyColors.dart';

class AnswerWidget extends StatelessWidget {
  final String text;
  final IsCorrect? isCorrect;
  final ValueChanged<bool>? onChanged;
  final bool value;
  const AnswerWidget({super.key, required this.text, this.isCorrect, this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: isCorrect==null?MyColors.borderColor:(isCorrect==IsCorrect.correct?MyColors.primaryColor:MyColors.errorColor), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          CustomCheckbox(value: value, onChanged: onChanged,isCorrect: isCorrect,size: 24,inactiveBorderColor: Color(0xff979797),activeColor: MyColors.primaryColor,borderRadius: 4,),
          SizedBox(width: 16,),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                height: 30 / 20,
                color: MyColors.secondColor,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
