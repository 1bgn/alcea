// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionBlock {

 String get ask; Map<String, bool> get answers;
/// Create a copy of QuestionBlock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionBlockCopyWith<QuestionBlock> get copyWith => _$QuestionBlockCopyWithImpl<QuestionBlock>(this as QuestionBlock, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionBlock&&(identical(other.ask, ask) || other.ask == ask)&&const DeepCollectionEquality().equals(other.answers, answers));
}


@override
int get hashCode => Object.hash(runtimeType,ask,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'QuestionBlock(ask: $ask, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $QuestionBlockCopyWith<$Res>  {
  factory $QuestionBlockCopyWith(QuestionBlock value, $Res Function(QuestionBlock) _then) = _$QuestionBlockCopyWithImpl;
@useResult
$Res call({
 String ask, Map<String, bool> answers
});




}
/// @nodoc
class _$QuestionBlockCopyWithImpl<$Res>
    implements $QuestionBlockCopyWith<$Res> {
  _$QuestionBlockCopyWithImpl(this._self, this._then);

  final QuestionBlock _self;
  final $Res Function(QuestionBlock) _then;

/// Create a copy of QuestionBlock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ask = null,Object? answers = null,}) {
  return _then(_self.copyWith(
ask: null == ask ? _self.ask : ask // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionBlock].
extension QuestionBlockPatterns on QuestionBlock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionBlock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionBlock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionBlock value)  $default,){
final _that = this;
switch (_that) {
case _QuestionBlock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionBlock value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionBlock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ask,  Map<String, bool> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionBlock() when $default != null:
return $default(_that.ask,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ask,  Map<String, bool> answers)  $default,) {final _that = this;
switch (_that) {
case _QuestionBlock():
return $default(_that.ask,_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ask,  Map<String, bool> answers)?  $default,) {final _that = this;
switch (_that) {
case _QuestionBlock() when $default != null:
return $default(_that.ask,_that.answers);case _:
  return null;

}
}

}

/// @nodoc


class _QuestionBlock implements QuestionBlock {
  const _QuestionBlock({this.ask = "", final  Map<String, bool> answers = const {}}): _answers = answers;
  

@override@JsonKey() final  String ask;
 final  Map<String, bool> _answers;
@override@JsonKey() Map<String, bool> get answers {
  if (_answers is EqualUnmodifiableMapView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_answers);
}


/// Create a copy of QuestionBlock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionBlockCopyWith<_QuestionBlock> get copyWith => __$QuestionBlockCopyWithImpl<_QuestionBlock>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionBlock&&(identical(other.ask, ask) || other.ask == ask)&&const DeepCollectionEquality().equals(other._answers, _answers));
}


@override
int get hashCode => Object.hash(runtimeType,ask,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'QuestionBlock(ask: $ask, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$QuestionBlockCopyWith<$Res> implements $QuestionBlockCopyWith<$Res> {
  factory _$QuestionBlockCopyWith(_QuestionBlock value, $Res Function(_QuestionBlock) _then) = __$QuestionBlockCopyWithImpl;
@override @useResult
$Res call({
 String ask, Map<String, bool> answers
});




}
/// @nodoc
class __$QuestionBlockCopyWithImpl<$Res>
    implements _$QuestionBlockCopyWith<$Res> {
  __$QuestionBlockCopyWithImpl(this._self, this._then);

  final _QuestionBlock _self;
  final $Res Function(_QuestionBlock) _then;

/// Create a copy of QuestionBlock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ask = null,Object? answers = null,}) {
  return _then(_QuestionBlock(
ask: null == ask ? _self.ask : ask // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}


}

// dart format on
