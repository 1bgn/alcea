import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
abstract class GlobalState with _$GlobalState{
  const factory GlobalState({@Default([])List<dynamic> questions}) = _GlobalState;
}