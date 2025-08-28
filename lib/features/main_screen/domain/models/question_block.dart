import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_block.freezed.dart';

@freezed
abstract class QuestionBlock with _$QuestionBlock{
  const factory QuestionBlock({
   @Default("") final String ask,
  @Default({})Map<String,bool> answers
})=_QuestionBlock;
}
extension QuestionBlockExtension on QuestionBlock{
  bool get isMultiAnswers{
    final answs = this.answers.values.where((e)=>e).length;
    return answs>1;
  }
}