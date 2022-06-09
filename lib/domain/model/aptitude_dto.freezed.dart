// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aptitude_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AptitudeDTO _$AptitudeDTOFromJson(Map<String, dynamic> json) {
  return _AptitudeDTO.fromJson(json);
}

/// @nodoc
mixin _$AptitudeDTO {
  int? get id => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AptitudeDTOCopyWith<AptitudeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AptitudeDTOCopyWith<$Res> {
  factory $AptitudeDTOCopyWith(
          AptitudeDTO value, $Res Function(AptitudeDTO) then) =
      _$AptitudeDTOCopyWithImpl<$Res>;
  $Res call({int? id, int? code, String? name, String? description});
}

/// @nodoc
class _$AptitudeDTOCopyWithImpl<$Res> implements $AptitudeDTOCopyWith<$Res> {
  _$AptitudeDTOCopyWithImpl(this._value, this._then);

  final AptitudeDTO _value;
  // ignore: unused_field
  final $Res Function(AptitudeDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AptitudeDTOCopyWith<$Res>
    implements $AptitudeDTOCopyWith<$Res> {
  factory _$$_AptitudeDTOCopyWith(
          _$_AptitudeDTO value, $Res Function(_$_AptitudeDTO) then) =
      __$$_AptitudeDTOCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? code, String? name, String? description});
}

/// @nodoc
class __$$_AptitudeDTOCopyWithImpl<$Res> extends _$AptitudeDTOCopyWithImpl<$Res>
    implements _$$_AptitudeDTOCopyWith<$Res> {
  __$$_AptitudeDTOCopyWithImpl(
      _$_AptitudeDTO _value, $Res Function(_$_AptitudeDTO) _then)
      : super(_value, (v) => _then(v as _$_AptitudeDTO));

  @override
  _$_AptitudeDTO get _value => super._value as _$_AptitudeDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_AptitudeDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AptitudeDTO with DiagnosticableTreeMixin implements _AptitudeDTO {
  const _$_AptitudeDTO({this.id, this.code, this.name, this.description});

  factory _$_AptitudeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AptitudeDTOFromJson(json);

  @override
  final int? id;
  @override
  final int? code;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AptitudeDTO(id: $id, code: $code, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AptitudeDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AptitudeDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_AptitudeDTOCopyWith<_$_AptitudeDTO> get copyWith =>
      __$$_AptitudeDTOCopyWithImpl<_$_AptitudeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AptitudeDTOToJson(this);
  }
}

abstract class _AptitudeDTO implements AptitudeDTO {
  const factory _AptitudeDTO(
      {final int? id,
      final int? code,
      final String? name,
      final String? description}) = _$_AptitudeDTO;

  factory _AptitudeDTO.fromJson(Map<String, dynamic> json) =
      _$_AptitudeDTO.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AptitudeDTOCopyWith<_$_AptitudeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
