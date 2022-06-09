// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answers_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswersUser _$AnswersUserFromJson(Map<String, dynamic> json) {
  return _AnswersUser.fromJson(json);
}

/// @nodoc
mixin _$AnswersUser {
  int? get id => throw _privateConstructorUsedError;
  Answers get answer => throw _privateConstructorUsedError;
  Questions get question => throw _privateConstructorUsedError;
  AppUser get appUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersUserCopyWith<AnswersUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersUserCopyWith<$Res> {
  factory $AnswersUserCopyWith(
          AnswersUser value, $Res Function(AnswersUser) then) =
      _$AnswersUserCopyWithImpl<$Res>;
  $Res call({int? id, Answers answer, Questions question, AppUser appUser});

  $AnswersCopyWith<$Res> get answer;
  $QuestionsCopyWith<$Res> get question;
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$AnswersUserCopyWithImpl<$Res> implements $AnswersUserCopyWith<$Res> {
  _$AnswersUserCopyWithImpl(this._value, this._then);

  final AnswersUser _value;
  // ignore: unused_field
  final $Res Function(AnswersUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
    Object? question = freezed,
    Object? appUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answers,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Questions,
      appUser: appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AnswersCopyWith<$Res> get answer {
    return $AnswersCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }

  @override
  $QuestionsCopyWith<$Res> get question {
    return $QuestionsCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }

  @override
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc
abstract class _$$_AnswersUserCopyWith<$Res>
    implements $AnswersUserCopyWith<$Res> {
  factory _$$_AnswersUserCopyWith(
          _$_AnswersUser value, $Res Function(_$_AnswersUser) then) =
      __$$_AnswersUserCopyWithImpl<$Res>;
  @override
  $Res call({int? id, Answers answer, Questions question, AppUser appUser});

  @override
  $AnswersCopyWith<$Res> get answer;
  @override
  $QuestionsCopyWith<$Res> get question;
  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_AnswersUserCopyWithImpl<$Res> extends _$AnswersUserCopyWithImpl<$Res>
    implements _$$_AnswersUserCopyWith<$Res> {
  __$$_AnswersUserCopyWithImpl(
      _$_AnswersUser _value, $Res Function(_$_AnswersUser) _then)
      : super(_value, (v) => _then(v as _$_AnswersUser));

  @override
  _$_AnswersUser get _value => super._value as _$_AnswersUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
    Object? question = freezed,
    Object? appUser = freezed,
  }) {
    return _then(_$_AnswersUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answers,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Questions,
      appUser: appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswersUser with DiagnosticableTreeMixin implements _AnswersUser {
  const _$_AnswersUser(
      {this.id,
      required this.answer,
      required this.question,
      required this.appUser});

  factory _$_AnswersUser.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersUserFromJson(json);

  @override
  final int? id;
  @override
  final Answers answer;
  @override
  final Questions question;
  @override
  final AppUser appUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswersUser(id: $id, answer: $answer, question: $question, appUser: $appUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswersUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('answer', answer))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('appUser', appUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswersUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.appUser, appUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(appUser));

  @JsonKey(ignore: true)
  @override
  _$$_AnswersUserCopyWith<_$_AnswersUser> get copyWith =>
      __$$_AnswersUserCopyWithImpl<_$_AnswersUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersUserToJson(this);
  }
}

abstract class _AnswersUser implements AnswersUser {
  const factory _AnswersUser(
      {final int? id,
      required final Answers answer,
      required final Questions question,
      required final AppUser appUser}) = _$_AnswersUser;

  factory _AnswersUser.fromJson(Map<String, dynamic> json) =
      _$_AnswersUser.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  Answers get answer => throw _privateConstructorUsedError;
  @override
  Questions get question => throw _privateConstructorUsedError;
  @override
  AppUser get appUser => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AnswersUserCopyWith<_$_AnswersUser> get copyWith =>
      throw _privateConstructorUsedError;
}
