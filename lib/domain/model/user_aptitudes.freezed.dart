// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_aptitudes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAptitudes _$UserAptitudesFromJson(Map<String, dynamic> json) {
  return _UserAptitudes.fromJson(json);
}

/// @nodoc
mixin _$UserAptitudes {
  int? get score => throw _privateConstructorUsedError;
  AptitudeDTO? get aptitudeDTO => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAptitudesCopyWith<UserAptitudes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAptitudesCopyWith<$Res> {
  factory $UserAptitudesCopyWith(
          UserAptitudes value, $Res Function(UserAptitudes) then) =
      _$UserAptitudesCopyWithImpl<$Res>;
  $Res call({int? score, AptitudeDTO? aptitudeDTO});

  $AptitudeDTOCopyWith<$Res>? get aptitudeDTO;
}

/// @nodoc
class _$UserAptitudesCopyWithImpl<$Res>
    implements $UserAptitudesCopyWith<$Res> {
  _$UserAptitudesCopyWithImpl(this._value, this._then);

  final UserAptitudes _value;
  // ignore: unused_field
  final $Res Function(UserAptitudes) _then;

  @override
  $Res call({
    Object? score = freezed,
    Object? aptitudeDTO = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      aptitudeDTO: aptitudeDTO == freezed
          ? _value.aptitudeDTO
          : aptitudeDTO // ignore: cast_nullable_to_non_nullable
              as AptitudeDTO?,
    ));
  }

  @override
  $AptitudeDTOCopyWith<$Res>? get aptitudeDTO {
    if (_value.aptitudeDTO == null) {
      return null;
    }

    return $AptitudeDTOCopyWith<$Res>(_value.aptitudeDTO!, (value) {
      return _then(_value.copyWith(aptitudeDTO: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserAptitudesCopyWith<$Res>
    implements $UserAptitudesCopyWith<$Res> {
  factory _$$_UserAptitudesCopyWith(
          _$_UserAptitudes value, $Res Function(_$_UserAptitudes) then) =
      __$$_UserAptitudesCopyWithImpl<$Res>;
  @override
  $Res call({int? score, AptitudeDTO? aptitudeDTO});

  @override
  $AptitudeDTOCopyWith<$Res>? get aptitudeDTO;
}

/// @nodoc
class __$$_UserAptitudesCopyWithImpl<$Res>
    extends _$UserAptitudesCopyWithImpl<$Res>
    implements _$$_UserAptitudesCopyWith<$Res> {
  __$$_UserAptitudesCopyWithImpl(
      _$_UserAptitudes _value, $Res Function(_$_UserAptitudes) _then)
      : super(_value, (v) => _then(v as _$_UserAptitudes));

  @override
  _$_UserAptitudes get _value => super._value as _$_UserAptitudes;

  @override
  $Res call({
    Object? score = freezed,
    Object? aptitudeDTO = freezed,
  }) {
    return _then(_$_UserAptitudes(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      aptitudeDTO: aptitudeDTO == freezed
          ? _value.aptitudeDTO
          : aptitudeDTO // ignore: cast_nullable_to_non_nullable
              as AptitudeDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAptitudes with DiagnosticableTreeMixin implements _UserAptitudes {
  const _$_UserAptitudes({this.score, this.aptitudeDTO});

  factory _$_UserAptitudes.fromJson(Map<String, dynamic> json) =>
      _$$_UserAptitudesFromJson(json);

  @override
  final int? score;
  @override
  final AptitudeDTO? aptitudeDTO;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAptitudes(score: $score, aptitudeDTO: $aptitudeDTO)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAptitudes'))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('aptitudeDTO', aptitudeDTO));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAptitudes &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality()
                .equals(other.aptitudeDTO, aptitudeDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(aptitudeDTO));

  @JsonKey(ignore: true)
  @override
  _$$_UserAptitudesCopyWith<_$_UserAptitudes> get copyWith =>
      __$$_UserAptitudesCopyWithImpl<_$_UserAptitudes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAptitudesToJson(this);
  }
}

abstract class _UserAptitudes implements UserAptitudes {
  const factory _UserAptitudes(
      {final int? score, final AptitudeDTO? aptitudeDTO}) = _$_UserAptitudes;

  factory _UserAptitudes.fromJson(Map<String, dynamic> json) =
      _$_UserAptitudes.fromJson;

  @override
  int? get score => throw _privateConstructorUsedError;
  @override
  AptitudeDTO? get aptitudeDTO => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserAptitudesCopyWith<_$_UserAptitudes> get copyWith =>
      throw _privateConstructorUsedError;
}
