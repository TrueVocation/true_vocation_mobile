// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestResult _$TestResultFromJson(Map<String, dynamic> json) {
  return _TestResult.fromJson(json);
}

/// @nodoc
mixin _$TestResult {
  int? get id => throw _privateConstructorUsedError;
  List<UserAptitudes>? get userAptitudes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestResultCopyWith<TestResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultCopyWith<$Res> {
  factory $TestResultCopyWith(
          TestResult value, $Res Function(TestResult) then) =
      _$TestResultCopyWithImpl<$Res>;
  $Res call({int? id, List<UserAptitudes>? userAptitudes});
}

/// @nodoc
class _$TestResultCopyWithImpl<$Res> implements $TestResultCopyWith<$Res> {
  _$TestResultCopyWithImpl(this._value, this._then);

  final TestResult _value;
  // ignore: unused_field
  final $Res Function(TestResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userAptitudes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userAptitudes: userAptitudes == freezed
          ? _value.userAptitudes
          : userAptitudes // ignore: cast_nullable_to_non_nullable
              as List<UserAptitudes>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TestResultCopyWith<$Res>
    implements $TestResultCopyWith<$Res> {
  factory _$$_TestResultCopyWith(
          _$_TestResult value, $Res Function(_$_TestResult) then) =
      __$$_TestResultCopyWithImpl<$Res>;
  @override
  $Res call({int? id, List<UserAptitudes>? userAptitudes});
}

/// @nodoc
class __$$_TestResultCopyWithImpl<$Res> extends _$TestResultCopyWithImpl<$Res>
    implements _$$_TestResultCopyWith<$Res> {
  __$$_TestResultCopyWithImpl(
      _$_TestResult _value, $Res Function(_$_TestResult) _then)
      : super(_value, (v) => _then(v as _$_TestResult));

  @override
  _$_TestResult get _value => super._value as _$_TestResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? userAptitudes = freezed,
  }) {
    return _then(_$_TestResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userAptitudes: userAptitudes == freezed
          ? _value._userAptitudes
          : userAptitudes // ignore: cast_nullable_to_non_nullable
              as List<UserAptitudes>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestResult with DiagnosticableTreeMixin implements _TestResult {
  const _$_TestResult({this.id, final List<UserAptitudes>? userAptitudes})
      : _userAptitudes = userAptitudes;

  factory _$_TestResult.fromJson(Map<String, dynamic> json) =>
      _$$_TestResultFromJson(json);

  @override
  final int? id;
  final List<UserAptitudes>? _userAptitudes;
  @override
  List<UserAptitudes>? get userAptitudes {
    final value = _userAptitudes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestResult(id: $id, userAptitudes: $userAptitudes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userAptitudes', userAptitudes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._userAptitudes, _userAptitudes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_userAptitudes));

  @JsonKey(ignore: true)
  @override
  _$$_TestResultCopyWith<_$_TestResult> get copyWith =>
      __$$_TestResultCopyWithImpl<_$_TestResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestResultToJson(this);
  }
}

abstract class _TestResult implements TestResult {
  const factory _TestResult(
      {final int? id,
      final List<UserAptitudes>? userAptitudes}) = _$_TestResult;

  factory _TestResult.fromJson(Map<String, dynamic> json) =
      _$_TestResult.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  List<UserAptitudes>? get userAptitudes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TestResultCopyWith<_$_TestResult> get copyWith =>
      throw _privateConstructorUsedError;
}
