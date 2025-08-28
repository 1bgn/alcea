import 'package:asker/common/widgets/custom_checkbox.dart';
import 'package:asker/features/main_screen/domain/models/answer.dart';
import 'package:asker/features/main_screen/domain/models/question_block.dart';
import 'package:signals/signals.dart';
class MainScreenController {
  final tasks = signal(List<QuestionBlock>.empty());
  final currentAsk = signal(0);
  final currentAnswers = signal(Map<Answer,bool>());
  final checkingMode = signal(false);
  void init(){
    tasks.value = [
      QuestionBlock(ask: "Выберите сильные стороны препарата Индинол Форто? (ВОЗМОЖНО НЕСКОЛЬКО ОТВЕТОВ)",brandName: "Индинол Форто",answers: [
        Answer(answer: "Универсален и подходит при всех типах мастопатии",isCorrect: true),
        Answer(answer: "Включен в действующие Клинические Рекомендации по ДДМЖ  с повышенным уровнем убедительности и достоверности (В2)",isCorrect: true),
        Answer(answer: "Обеспечивает патогенетическое лечение, а не симптоматическое ",isCorrect: false),

      ]),

    ];

  }
  bool  currentAnswerValue(Answer answer) =>currentAnswers.value[answer]??false;
  IsCorrect? checkAnswer(Answer answer){


    if(answer.isCorrect && currentAnswers.value[answer]==true){
      return IsCorrect.correct;
    }else    if(!answer.isCorrect && currentAnswers.value[answer]==true){
      return IsCorrect.incorrect;
    }
    return null;

  }

  void setAnswer(Answer answer,bool value){
    if(currentAnswers.value.containsKey(answer)){
      currentAnswers.value.update(answer, (v)=>value);
    }else{
      currentAnswers.value.putIfAbsent(answer, ()=>value);
    }
    currentAnswers.value = {...currentAnswers.value};
  }
  QuestionBlock get currentBlock=>tasks.value[currentAsk.value];
}