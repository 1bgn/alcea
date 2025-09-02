// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Answer {

 String get answer; bool get isCorrect;
/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerCopyWith<Answer> get copyWith => _$AnswerCopyWithImpl<Answer>(this as Answer, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answer&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,answer,isCorrect);

@override
String toString() {
  return 'Answer(answer: $answer, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class $AnswerCopyWith<$Res>  {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) _then) = _$AnswerCopyWithImpl;
@useResult
$Res call({
 String answer, bool isCorrect
});




}
/// @nodoc
class _$AnswerCopyWithImpl<$Res>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._self, this._then);

  final Answer _self;
  final $Res Function(Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answer = null,Object? isCorrect = null,}) {
  return _then(_self.copyWith(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Answer].
extension AnswerPatterns on Answer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answer value)  $default,){
final _that = this;
switch (_that) {
case _Answer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answer value)?  $default,){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String answer,  bool isCorrect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.answer,_that.isCorrect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String answer,  bool isCorrect)  $default,) {final _that = this;
switch (_that) {
case _Answer():
return $default(_that.answer,_that.isCorrect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String answer,  bool isCorrect)?  $default,) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.answer,_that.isCorrect);case _:
  return null;

}
}

}

/// @nodoc


class _Answer implements Answer {
  const _Answer({required this.answer, this.isCorrect = false});
  

@override final  String answer;
@override@JsonKey() final  bool isCorrect;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerCopyWith<_Answer> get copyWith => __$AnswerCopyWithImpl<_Answer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answer&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,answer,isCorrect);

@override
String toString() {
  return 'Answer(answer: $answer, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) _then) = __$AnswerCopyWithImpl;
@override @useResult
$Res call({
 String answer, bool isCorrect
});




}
/// @nodoc
class __$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(this._self, this._then);

  final _Answer _self;
  final $Res Function(_Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answer = null,Object? isCorrect = null,}) {
  return _then(_Answer(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
