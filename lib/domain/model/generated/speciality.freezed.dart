// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../speciality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Speciality _$SpecialityFromJson(Map<String, dynamic> json) {
  return _Speciality.fromJson(json);
}

/// @nodoc
mixin _$Speciality {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get totalGrants => throw _privateConstructorUsedError;
  int get minScoreGeneral => throw _privateConstructorUsedError;
  int get minScoreQuota => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get employment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialityCopyWith<Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityCopyWith<$Res> {
  factory $SpecialityCopyWith(
          Speciality value, $Res Function(Speciality) then) =
      _$SpecialityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String description,
      int totalGrants,
      int minScoreGeneral,
      int minScoreQuota,
      String type,
      String name,
      int price,
      String employment});
}

/// @nodoc
class _$SpecialityCopyWithImpl<$Res> implements $SpecialityCopyWith<$Res> {
  _$SpecialityCopyWithImpl(this._value, this._then);

  final Speciality _value;
  // ignore: unused_field
  final $Res Function(Speciality) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? totalGrants = freezed,
    Object? minScoreGeneral = freezed,
    Object? minScoreQuota = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? employment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      totalGrants: totalGrants == freezed
          ? _value.totalGrants
          : totalGrants // ignore: cast_nullable_to_non_nullable
              as int,
      minScoreGeneral: minScoreGeneral == freezed
          ? _value.minScoreGeneral
          : minScoreGeneral // ignore: cast_nullable_to_non_nullable
              as int,
      minScoreQuota: minScoreQuota == freezed
          ? _value.minScoreQuota
          : minScoreQuota // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      employment: employment == freezed
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecialityCopyWith<$Res>
    implements $SpecialityCopyWith<$Res> {
  factory _$$_SpecialityCopyWith(
          _$_Speciality value, $Res Function(_$_Speciality) then) =
      __$$_SpecialityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String description,
      int totalGrants,
      int minScoreGeneral,
      int minScoreQuota,
      String type,
      String name,
      int price,
      String employment});
}

/// @nodoc
class __$$_SpecialityCopyWithImpl<$Res> extends _$SpecialityCopyWithImpl<$Res>
    implements _$$_SpecialityCopyWith<$Res> {
  __$$_SpecialityCopyWithImpl(
      _$_Speciality _value, $Res Function(_$_Speciality) _then)
      : super(_value, (v) => _then(v as _$_Speciality));

  @override
  _$_Speciality get _value => super._value as _$_Speciality;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? totalGrants = freezed,
    Object? minScoreGeneral = freezed,
    Object? minScoreQuota = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? employment = freezed,
  }) {
    return _then(_$_Speciality(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      totalGrants: totalGrants == freezed
          ? _value.totalGrants
          : totalGrants // ignore: cast_nullable_to_non_nullable
              as int,
      minScoreGeneral: minScoreGeneral == freezed
          ? _value.minScoreGeneral
          : minScoreGeneral // ignore: cast_nullable_to_non_nullable
              as int,
      minScoreQuota: minScoreQuota == freezed
          ? _value.minScoreQuota
          : minScoreQuota // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      employment: employment == freezed
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Speciality with DiagnosticableTreeMixin implements _Speciality {
  const _$_Speciality(
      {required this.id,
      required this.description,
      required this.totalGrants,
      required this.minScoreGeneral,
      required this.minScoreQuota,
      required this.type,
      required this.name,
      required this.price,
      required this.employment});

  factory _$_Speciality.fromJson(Map<String, dynamic> json) =>
      _$$_SpecialityFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final int totalGrants;
  @override
  final int minScoreGeneral;
  @override
  final int minScoreQuota;
  @override
  final String type;
  @override
  final String name;
  @override
  final int price;
  @override
  final String employment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Speciality(id: $id, description: $description, totalGrants: $totalGrants, minScoreGeneral: $minScoreGeneral, minScoreQuota: $minScoreQuota, type: $type, name: $name, price: $price, employment: $employment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Speciality'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('totalGrants', totalGrants))
      ..add(DiagnosticsProperty('minScoreGeneral', minScoreGeneral))
      ..add(DiagnosticsProperty('minScoreQuota', minScoreQuota))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('employment', employment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Speciality &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.totalGrants, totalGrants) &&
            const DeepCollectionEquality()
                .equals(other.minScoreGeneral, minScoreGeneral) &&
            const DeepCollectionEquality()
                .equals(other.minScoreQuota, minScoreQuota) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.employment, employment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(totalGrants),
      const DeepCollectionEquality().hash(minScoreGeneral),
      const DeepCollectionEquality().hash(minScoreQuota),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(employment));

  @JsonKey(ignore: true)
  @override
  _$$_SpecialityCopyWith<_$_Speciality> get copyWith =>
      __$$_SpecialityCopyWithImpl<_$_Speciality>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecialityToJson(this);
  }
}

abstract class _Speciality implements Speciality {
  const factory _Speciality(
      {required final int id,
      required final String description,
      required final int totalGrants,
      required final int minScoreGeneral,
      required final int minScoreQuota,
      required final String type,
      required final String name,
      required final int price,
      required final String employment}) = _$_Speciality;

  factory _Speciality.fromJson(Map<String, dynamic> json) =
      _$_Speciality.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get totalGrants => throw _privateConstructorUsedError;
  @override
  int get minScoreGeneral => throw _privateConstructorUsedError;
  @override
  int get minScoreQuota => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get employment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialityCopyWith<_$_Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}
