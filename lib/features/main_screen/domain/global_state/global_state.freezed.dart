// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GlobalState {

 List<dynamic> get questions;
/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalStateCopyWith<GlobalState> get copyWith => _$GlobalStateCopyWithImpl<GlobalState>(this as GlobalState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalState&&const DeepCollectionEquality().equals(other.questions, questions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(questions));

@override
String toString() {
  return 'GlobalState(questions: $questions)';
}


}

/// @nodoc
abstract mixin class $GlobalStateCopyWith<$Res>  {
  factory $GlobalStateCopyWith(GlobalState value, $Res Function(GlobalState) _then) = _$GlobalStateCopyWithImpl;
@useResult
$Res call({
 List<dynamic> questions
});




}
/// @nodoc
class _$GlobalStateCopyWithImpl<$Res>
    implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._self, this._then);

  final GlobalState _self;
  final $Res Function(GlobalState) _then;

/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questions = null,}) {
  return _then(_self.copyWith(
questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalState].
extension GlobalStatePatterns on GlobalState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalState value)  $default,){
final _that = this;
switch (_that) {
case _GlobalState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalState value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<dynamic> questions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalState() when $default != null:
return $default(_that.questions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<dynamic> questions)  $default,) {final _that = this;
switch (_that) {
case _GlobalState():
return $default(_that.questions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<dynamic> questions)?  $default,) {final _that = this;
switch (_that) {
case _GlobalState() when $default != null:
return $default(_that.questions);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalState implements GlobalState {
  const _GlobalState({final  List<dynamic> questions = const []}): _questions = questions;
  

 final  List<dynamic> _questions;
@override@JsonKey() List<dynamic> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}


/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalStateCopyWith<_GlobalState> get copyWith => __$GlobalStateCopyWithImpl<_GlobalState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalState&&const DeepCollectionEquality().equals(other._questions, _questions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions));

@override
String toString() {
  return 'GlobalState(questions: $questions)';
}


}

/// @nodoc
abstract mixin class _$GlobalStateCopyWith<$Res> implements $GlobalStateCopyWith<$Res> {
  factory _$GlobalStateCopyWith(_GlobalState value, $Res Function(_GlobalState) _then) = __$GlobalStateCopyWithImpl;
@override @useResult
$Res call({
 List<dynamic> questions
});




}
/// @nodoc
class __$GlobalStateCopyWithImpl<$Res>
    implements _$GlobalStateCopyWith<$Res> {
  __$GlobalStateCopyWithImpl(this._self, this._then);

  final _GlobalState _self;
  final $Res Function(_GlobalState) _then;

/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questions = null,}) {
  return _then(_GlobalState(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
