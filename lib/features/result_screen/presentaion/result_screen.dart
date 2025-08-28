import 'package:asker/common/MyColors.dart';
import 'package:asker/common/widgets/custom_primary_button.dart';
import 'package:asker/di/injectable.dart';
import 'package:asker/features/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:asker/features/result_screen/presentaion/widgets/finish_message.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ResultScreen extends StatefulWidget {
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
                child: Image.asset("assets/bg.png", fit: BoxFit.cover),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "${controller.globalCorrectAsks.value}/${controller.tasks.value.length}",
                  style: TextStyle(
                    fontSize: 180,
                    height: 240 / 180,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w700,
                    color: MyColors.secondColor,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    FinishMessage(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomPrimaryButton(
                                  borderColor: Color(0xffB9F6E6),
                                  onPressed: () {
                                    controller.clearAll();
                                    Navigator.pop(context);
                                  },
                                  icon: Image.asset("assets/back_arrow.png"),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF2FEFB),
                                      Color(0xffDFF5EF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  child: Text(
                                    "Начать заново".toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      height: 30 / 24,
                                      color: MyColors.primaryColor,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
