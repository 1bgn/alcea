import 'package:asker/features/main_screen/domain/models/question_block.dart';
import 'package:asker/features/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = MainScreenController();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Здесь будет логотип",
                  style: TextStyle(color: Colors.white,fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 48,),
            Column(
              children: controller.tasks.value
                  .map(
                    (e) => Column(
                      children: [
                        Row(children: [Text(e.ask)],mainAxisAlignment: MainAxisAlignment.center,),
                        SizedBox(height: 24,),

                        Builder(
                          builder: (context) {
                            final isMulti = e.isMultiAnswers;
                            return Column(
                              children: [
                                Column(
                                  children: e.answers.keys
                                      .map(
                                        (e) => Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(e),
                                            isMulti
                                                ? Checkbox(
                                                    value: false,
                                                    onChanged: (v) {},
                                                  )
                                                : Radio(
                                                    value: true,
                                                    groupValue: false,
                                                    onChanged: (v) {},
                                                  ),
                                          ],
                                        ),
                                      )
                                      .toList(),
                                ),
                                Divider()
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){},child: Text("Повторить",style: TextStyle(fontSize: 16,color: Colors.white),),color: Colors.blue,),
SizedBox(width: 12,),
                MaterialButton(onPressed: (){},child: Text("Завершить",style:  TextStyle(fontSize: 16,color: Colors.white),),color: Colors.green,),
              ],
            )

          ],
        ),
      );
    });
  }
}
