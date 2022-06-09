// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
mixin _$Answers {
  int get id => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res>;
  $Res call({int id, String answer});
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res> implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  final Answers _value;
  // ignore: unused_field
  final $Res Function(Answers) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$_AnswersCopyWith(
          _$_Answers value, $Res Function(_$_Answers) then) =
      __$$_AnswersCopyWithImpl<$Res>;
  @override
  $Res call({int id, String answer});
}

/// @nodoc
class __$$_AnswersCopyWithImpl<$Res> extends _$AnswersCopyWithImpl<$Res>
    implements _$$_AnswersCopyWith<$Res> {
  __$$_AnswersCopyWithImpl(_$_Answers _value, $Res Function(_$_Answers) _then)
      : super(_value, (v) => _then(v as _$_Answers));

  @override
  _$_Answers get _value => super._value as _$_Answers;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_Answers(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answers with DiagnosticableTreeMixin implements _Answers {
  const _$_Answers({required this.id, required this.answer});

  factory _$_Answers.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersFromJson(json);

  @override
  final int id;
  @override
  final String answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Answers(id: $id, answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Answers'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answers &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      __$$_AnswersCopyWithImpl<_$_Answers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersToJson(this);
  }
}

abstract class _Answers implements Answers {
  const factory _Answers(
      {required final int id, required final String answer}) = _$_Answers;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$_Answers.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      throw _privateConstructorUsedError;
}
