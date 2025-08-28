import 'package:asker/common/MyColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinishMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Center(
        child: Text(
          "Опрос завершен!",
          style: TextStyle(
            fontSize: 32,
            height: 40 / 32,
            fontWeight: FontWeight.w700,
            letterSpacing: 0,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: MyColors.primaryColor, width: 2),
      ),
    );
  }
}
