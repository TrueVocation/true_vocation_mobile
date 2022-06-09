// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Questions _$QuestionsFromJson(Map<String, dynamic> json) {
  return _Questions.fromJson(json);
}

/// @nodoc
mixin _$Questions {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<Answers> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsCopyWith<Questions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsCopyWith<$Res> {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) then) =
      _$QuestionsCopyWithImpl<$Res>;
  $Res call({int id, String question, List<Answers> answers});
}

/// @nodoc
class _$QuestionsCopyWithImpl<$Res> implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._value, this._then);

  final Questions _value;
  // ignore: unused_field
  final $Res Function(Questions) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionsCopyWith<$Res> implements $QuestionsCopyWith<$Res> {
  factory _$$_QuestionsCopyWith(
          _$_Questions value, $Res Function(_$_Questions) then) =
      __$$_QuestionsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String question, List<Answers> answers});
}

/// @nodoc
class __$$_QuestionsCopyWithImpl<$Res> extends _$QuestionsCopyWithImpl<$Res>
    implements _$$_QuestionsCopyWith<$Res> {
  __$$_QuestionsCopyWithImpl(
      _$_Questions _value, $Res Function(_$_Questions) _then)
      : super(_value, (v) => _then(v as _$_Questions));

  @override
  _$_Questions get _value => super._value as _$_Questions;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_Questions(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Questions with DiagnosticableTreeMixin implements _Questions {
  const _$_Questions(
      {required this.id,
      required this.question,
      required final List<Answers> answers})
      : _answers = answers;

  factory _$_Questions.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionsFromJson(json);

  @override
  final int id;
  @override
  final String question;
  final List<Answers> _answers;
  @override
  List<Answers> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Questions(id: $id, question: $question, answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Questions'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Questions &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionsCopyWith<_$_Questions> get copyWith =>
      __$$_QuestionsCopyWithImpl<_$_Questions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionsToJson(this);
  }
}

abstract class _Questions implements Questions {
  const factory _Questions(
      {required final int id,
      required final String question,
      required final List<Answers> answers}) = _$_Questions;

  factory _Questions.fromJson(Map<String, dynamic> json) =
      _$_Questions.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get question => throw _privateConstructorUsedError;
  @override
  List<Answers> get answers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionsCopyWith<_$_Questions> get copyWith =>
      throw _privateConstructorUsedError;
}
