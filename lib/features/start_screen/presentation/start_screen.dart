import 'package:asker/common/MyColors.dart';
import 'package:asker/common/widgets/custom_primary_button.dart';
import 'package:asker/di/injectable.dart';
import 'package:asker/features/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:asker/features/main_screen/presentation/main_screen.dart';
import 'package:asker/features/main_screen/presentation/widget/answer_widget.dart';
import 'package:asker/features/main_screen/presentation/widget/ask_widget.dart';
import 'package:asker/features/main_screen/presentation/widget/brand.dart';
import 'package:asker/features/result_screen/presentaion/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signals/signals_flutter.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final controller = getIt<MainScreenController>();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                child: Image.asset("assets/start_bg.png", fit: BoxFit.cover),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child:Image.asset("assets/logo.png"),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child:Center(child: Container(
                  width: 356,
                  child: CustomPrimaryButton(
                    borderColor: MyColors.primaryColor,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));

                    },
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff63E9CA),
                        Color(0xff3ED4B2),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    child: Text(
                      "Начать опрос".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 30 / 24,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),),
              ),
            ),
          ],
        ),
      );
    });
  }
}
