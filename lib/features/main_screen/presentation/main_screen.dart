import 'package:asker/common/MyColors.dart';
import 'package:asker/common/widgets/custom_primary_button.dart';
import 'package:asker/di/injectable.dart';
import 'package:asker/features/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:asker/features/main_screen/presentation/widget/answer_widget.dart';
import 'package:asker/features/main_screen/presentation/widget/ask_widget.dart';
import 'package:asker/features/main_screen/presentation/widget/brand.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signals/signals_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    Brand(text: controller.currentBlock.brandName),
                    SizedBox(height: 8),
                    AskWidget(text: controller.currentBlock.ask, number: controller.currentAsk.value+1),
                    SizedBox(height: 32),
                    Watch(
                       (context) {
                        return Column(
                          children: controller.currentBlock.answers
                              .map(
                                (e) => Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: AnswerWidget(text: e.answer,value: controller.currentAnswerValue(e),isCorrect: controller.checkingMode.value?controller.checkAnswer(e):null,onChanged: (v){
                                    controller.setAnswer(e, v);
                                    print("eeee $v");
                                    print("ceracvear ${controller.currentAnswers.value}");
                                  },),
                                ),
                              )
                              .toList(),
                        );
                      }
                    ),
                    SizedBox(height: 24),
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
                                    controller.checkingMode.value = true;
                                  },
                                  enabledTextStyle: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    height: 30 / 24,
                                    color: MyColors.primaryColor,
                                    letterSpacing: 0,
                                  ),
                                  disabledTextStyle: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    height: 30 / 24,
                                    color: Color(0xffC4EEE4),
                                    letterSpacing: 0,
                                  ),

                                  enabled: controller.currentAnswers.value.isNotEmpty,

                                  // disabledTextColor: Colors.red,

                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF2FEFB),
                                      Color(0xffDFF5EF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  child: Text(
                                    "Проверить результат".toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      height: 30 / 24,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: CustomPrimaryButton(
                                  borderColor: MyColors.primaryColor,
                                  onPressed: () {
                                    if(controller.globalCheck()){
                                      controller.globalCorrectAsks.value++;
                                    }
                                    controller.clearScreen();
                                    controller.nextScreen();
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
                                    "Следующий вопрос".toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      height: 30 / 24,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: CustomPrimaryButton(
                                  borderColor: Color(0xffB9F6E6),
                                  onPressed: () {
                                    controller.clearAll();
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
