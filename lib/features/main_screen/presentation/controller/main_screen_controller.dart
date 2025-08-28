import 'package:asker/features/main_screen/domain/models/question_block.dart';
import 'package:signals/signals.dart';
class MainScreenController {
  final tasks = signal(List<QuestionBlock>.empty());
  void init(){
    tasks.value = [
      QuestionBlock(ask: "Кто такая выхухоль?",answers: {
        "Это млекопитающие":true,
        "Это птица":true,
        "Это рыба":true,
        "Это выдуманное животное":false
      }),
      QuestionBlock(ask: "Кто такая выхухоль?",answers: {
        "Это млекопитающие":false,
        "Это птица":false,
        "Это рыба":false,
        "Это выдуманное животное":true
      }),
    ];
  }
}