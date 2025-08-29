import 'package:asker/common/widgets/custom_checkbox.dart';
import 'package:asker/features/main_screen/domain/models/answer.dart';
import 'package:asker/features/main_screen/domain/models/question_block.dart';
import 'package:asker/features/main_screen/domain/usecase/get_data_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:signals/signals.dart';

import '../../../../common/widgets/is_correct.dart';
@LazySingleton()
class MainScreenController {
  final GetDataUsecase getDataUsecase;
  MainScreenController(this.getDataUsecase);
  final tasks = signal(List<QuestionBlock>.empty());
  final currentAsk = signal(0);
  final currentAnswers = signal(Map<Answer, bool>());
  final globalCorrectAsks = signal(0);
  final checkingMode = signal(false);

  void init() {
    tasks.value = getDataUsecase.execute();
  }
  bool nextScreen(){
    if(currentAsk.value +1 <tasks.value.length){
      currentAsk.value++;

      return true;
    }
    return false;
  }
  void clearScreen(){
    currentAnswers.value = {};
    checkingMode.value = false;
  }
  void clearAll(){
   clearScreen();
    globalCorrectAsks.value = 0;
    currentAsk.value = 0;
  }

  bool currentAnswerValue(Answer answer) =>
      currentAnswers.value[answer] ?? false;

  IsCorrect? checkAnswer(Answer answer) {
    if (answer.isCorrect && currentAnswers.value[answer] == true) {
      return IsCorrect.correct;
    } else if (!answer.isCorrect && currentAnswers.value[answer] == true ||
        answer.isCorrect && currentAnswers.value[answer] == null ||
        answer.isCorrect && currentAnswers.value[answer] == false) {
      return IsCorrect.incorrect;
    }
    return null;
  }

  bool globalCheck() {
    for (var e in currentBlock.answers) {
      if (e.isCorrect && currentAnswers.value[e] == null ||
          e.isCorrect && currentAnswers.value[e] == false ||
          !e.isCorrect && currentAnswers.value[e] == true) {
        return false;
      }
    }
    return true;
  }

  void setAnswer(Answer answer, bool value) {
    if (currentAnswers.value.containsKey(answer)) {
      currentAnswers.value.update(answer, (v) => value);
    } else {
      currentAnswers.value.putIfAbsent(answer, () => value);
    }
    currentAnswers.value = {...currentAnswers.value};
  }

  QuestionBlock get currentBlock => tasks.value[currentAsk.value];
}
