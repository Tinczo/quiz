// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Question {

 String get text; List<String> get answers; int get indexOfCorrectAnswer; int? get indexOfChoosenAnswer;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.indexOfCorrectAnswer, indexOfCorrectAnswer) || other.indexOfCorrectAnswer == indexOfCorrectAnswer)&&(identical(other.indexOfChoosenAnswer, indexOfChoosenAnswer) || other.indexOfChoosenAnswer == indexOfChoosenAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(answers),indexOfCorrectAnswer,indexOfChoosenAnswer);

@override
String toString() {
  return 'Question(text: $text, answers: $answers, indexOfCorrectAnswer: $indexOfCorrectAnswer, indexOfChoosenAnswer: $indexOfChoosenAnswer)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 String text, List<String> answers, int indexOfCorrectAnswer, int? indexOfChoosenAnswer
});




}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? answers = null,Object? indexOfCorrectAnswer = null,Object? indexOfChoosenAnswer = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<String>,indexOfCorrectAnswer: null == indexOfCorrectAnswer ? _self.indexOfCorrectAnswer : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
as int,indexOfChoosenAnswer: freezed == indexOfChoosenAnswer ? _self.indexOfChoosenAnswer : indexOfChoosenAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  List<String> answers,  int indexOfCorrectAnswer,  int? indexOfChoosenAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.text,_that.answers,_that.indexOfCorrectAnswer,_that.indexOfChoosenAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  List<String> answers,  int indexOfCorrectAnswer,  int? indexOfChoosenAnswer)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.text,_that.answers,_that.indexOfCorrectAnswer,_that.indexOfChoosenAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  List<String> answers,  int indexOfCorrectAnswer,  int? indexOfChoosenAnswer)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.text,_that.answers,_that.indexOfCorrectAnswer,_that.indexOfChoosenAnswer);case _:
  return null;

}
}

}

/// @nodoc


class _Question extends Question {
  const _Question(this.text, final  List<String> answers, {required this.indexOfCorrectAnswer, this.indexOfChoosenAnswer}): _answers = answers,super._();
  

@override final  String text;
 final  List<String> _answers;
@override List<String> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

@override final  int indexOfCorrectAnswer;
@override final  int? indexOfChoosenAnswer;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.indexOfCorrectAnswer, indexOfCorrectAnswer) || other.indexOfCorrectAnswer == indexOfCorrectAnswer)&&(identical(other.indexOfChoosenAnswer, indexOfChoosenAnswer) || other.indexOfChoosenAnswer == indexOfChoosenAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_answers),indexOfCorrectAnswer,indexOfChoosenAnswer);

@override
String toString() {
  return 'Question(text: $text, answers: $answers, indexOfCorrectAnswer: $indexOfCorrectAnswer, indexOfChoosenAnswer: $indexOfChoosenAnswer)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 String text, List<String> answers, int indexOfCorrectAnswer, int? indexOfChoosenAnswer
});




}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? answers = null,Object? indexOfCorrectAnswer = null,Object? indexOfChoosenAnswer = freezed,}) {
  return _then(_Question(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<String>,indexOfCorrectAnswer: null == indexOfCorrectAnswer ? _self.indexOfCorrectAnswer : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
as int,indexOfChoosenAnswer: freezed == indexOfChoosenAnswer ? _self.indexOfChoosenAnswer : indexOfChoosenAnswer // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
