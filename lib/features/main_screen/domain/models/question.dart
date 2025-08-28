import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question{
  const factory Question({
    @Default("") final String ask,

  })=_Question;
}