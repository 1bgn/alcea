import 'package:asker/common/MyColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  final String text;

  const Brand({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 32),
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Text(
              "Бренд:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 30 / 20,
                letterSpacing: 0,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Text(
            text,
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.w700,
              fontSize: 20,
              height: 30 / 20,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
