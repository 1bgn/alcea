import 'package:asker/features/main_screen/domain/models/answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_block.freezed.dart';

@freezed
abstract class QuestionBlock with _$QuestionBlock{
  const factory QuestionBlock({
   required final String ask,
    required final String brandName,
  @Default([])List<Answer> answers
})=_QuestionBlock;
}
extension QuestionBlockExtension on QuestionBlock{
    bool get isSingleAnswer=>answers.where((a)=>a.isCorrect).length==1;
}