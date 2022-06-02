// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../regions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Regions _$RegionsFromJson(Map<String, dynamic> json) {
  return _Regions.fromJson(json);
}

/// @nodoc
mixin _$Regions {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionsCopyWith<Regions> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionsCopyWith<$Res> {
  factory $RegionsCopyWith(Regions value, $Res Function(Regions) then) =
      _$RegionsCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$RegionsCopyWithImpl<$Res> implements $RegionsCopyWith<$Res> {
  _$RegionsCopyWithImpl(this._value, this._then);

  final Regions _value;
  // ignore: unused_field
  final $Res Function(Regions) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_RegionsCopyWith<$Res> implements $RegionsCopyWith<$Res> {
  factory _$$_RegionsCopyWith(
          _$_Regions value, $Res Function(_$_Regions) then) =
      __$$_RegionsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_RegionsCopyWithImpl<$Res> extends _$RegionsCopyWithImpl<$Res>
    implements _$$_RegionsCopyWith<$Res> {
  __$$_RegionsCopyWithImpl(_$_Regions _value, $Res Function(_$_Regions) _then)
      : super(_value, (v) => _then(v as _$_Regions));

  @override
  _$_Regions get _value => super._value as _$_Regions;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Regions(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Regions with DiagnosticableTreeMixin implements _Regions {
  const _$_Regions({required this.id, required this.name});

  factory _$_Regions.fromJson(Map<String, dynamic> json) =>
      _$$_RegionsFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Regions(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Regions'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Regions &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_RegionsCopyWith<_$_Regions> get copyWith =>
      __$$_RegionsCopyWithImpl<_$_Regions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionsToJson(this);
  }
}

abstract class _Regions implements Regions {
  const factory _Regions({required final int id, required final String name}) =
      _$_Regions;

  factory _Regions.fromJson(Map<String, dynamic> json) = _$_Regions.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegionsCopyWith<_$_Regions> get copyWith =>
      throw _privateConstructorUsedError;
}
