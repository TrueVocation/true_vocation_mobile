// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

University _$UniversityFromJson(Map<String, dynamic> json) {
  return _University.fromJson(json);
}

/// @nodoc
mixin _$University {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  bool get military => throw _privateConstructorUsedError;
  bool get dormitory => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get specialityCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String description,
      String address,
      String code,
      String logo,
      bool military,
      bool dormitory,
      String status,
      int specialityCount});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res> implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  final University _value;
  // ignore: unused_field
  final $Res Function(University) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? code = freezed,
    Object? logo = freezed,
    Object? military = freezed,
    Object? dormitory = freezed,
    Object? status = freezed,
    Object? specialityCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      military: military == freezed
          ? _value.military
          : military // ignore: cast_nullable_to_non_nullable
              as bool,
      dormitory: dormitory == freezed
          ? _value.dormitory
          : dormitory // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      specialityCount: specialityCount == freezed
          ? _value.specialityCount
          : specialityCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityCopyWith<$Res>
    implements $UniversityCopyWith<$Res> {
  factory _$$_UniversityCopyWith(
          _$_University value, $Res Function(_$_University) then) =
      __$$_UniversityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String description,
      String address,
      String code,
      String logo,
      bool military,
      bool dormitory,
      String status,
      int specialityCount});
}

/// @nodoc
class __$$_UniversityCopyWithImpl<$Res> extends _$UniversityCopyWithImpl<$Res>
    implements _$$_UniversityCopyWith<$Res> {
  __$$_UniversityCopyWithImpl(
      _$_University _value, $Res Function(_$_University) _then)
      : super(_value, (v) => _then(v as _$_University));

  @override
  _$_University get _value => super._value as _$_University;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? code = freezed,
    Object? logo = freezed,
    Object? military = freezed,
    Object? dormitory = freezed,
    Object? status = freezed,
    Object? specialityCount = freezed,
  }) {
    return _then(_$_University(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      military: military == freezed
          ? _value.military
          : military // ignore: cast_nullable_to_non_nullable
              as bool,
      dormitory: dormitory == freezed
          ? _value.dormitory
          : dormitory // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      specialityCount: specialityCount == freezed
          ? _value.specialityCount
          : specialityCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_University with DiagnosticableTreeMixin implements _University {
  const _$_University(
      {required this.id,
      required this.name,
      required this.description,
      required this.address,
      required this.code,
      required this.logo,
      required this.military,
      required this.dormitory,
      required this.status,
      required this.specialityCount});

  factory _$_University.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String address;
  @override
  final String code;
  @override
  final String logo;
  @override
  final bool military;
  @override
  final bool dormitory;
  @override
  final String status;
  @override
  final int specialityCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'University(id: $id, name: $name, description: $description, address: $address, code: $code, logo: $logo, military: $military, dormitory: $dormitory, status: $status, specialityCount: $specialityCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'University'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('military', military))
      ..add(DiagnosticsProperty('dormitory', dormitory))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('specialityCount', specialityCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_University &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.military, military) &&
            const DeepCollectionEquality().equals(other.dormitory, dormitory) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.specialityCount, specialityCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(military),
      const DeepCollectionEquality().hash(dormitory),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(specialityCount));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      __$$_UniversityCopyWithImpl<_$_University>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityToJson(this);
  }
}

abstract class _University implements University {
  const factory _University(
      {required final int id,
      required final String name,
      required final String description,
      required final String address,
      required final String code,
      required final String logo,
      required final bool military,
      required final bool dormitory,
      required final String status,
      required final int specialityCount}) = _$_University;

  factory _University.fromJson(Map<String, dynamic> json) =
      _$_University.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get logo => throw _privateConstructorUsedError;
  @override
  bool get military => throw _privateConstructorUsedError;
  @override
  bool get dormitory => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get specialityCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      throw _privateConstructorUsedError;
}
