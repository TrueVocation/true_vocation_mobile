// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../faculty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Faculty _$FacultyFromJson(Map<String, dynamic> json) {
  return _Faculty.fromJson(json);
}

/// @nodoc
mixin _$Faculty {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacultyCopyWith<Faculty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyCopyWith<$Res> {
  factory $FacultyCopyWith(Faculty value, $Res Function(Faculty) then) =
      _$FacultyCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? description});
}

/// @nodoc
class _$FacultyCopyWithImpl<$Res> implements $FacultyCopyWith<$Res> {
  _$FacultyCopyWithImpl(this._value, this._then);

  final Faculty _value;
  // ignore: unused_field
  final $Res Function(Faculty) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_FacultyCopyWith<$Res> implements $FacultyCopyWith<$Res> {
  factory _$$_FacultyCopyWith(
          _$_Faculty value, $Res Function(_$_Faculty) then) =
      __$$_FacultyCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? description});
}

/// @nodoc
class __$$_FacultyCopyWithImpl<$Res> extends _$FacultyCopyWithImpl<$Res>
    implements _$$_FacultyCopyWith<$Res> {
  __$$_FacultyCopyWithImpl(_$_Faculty _value, $Res Function(_$_Faculty) _then)
      : super(_value, (v) => _then(v as _$_Faculty));

  @override
  _$_Faculty get _value => super._value as _$_Faculty;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Faculty(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Faculty with DiagnosticableTreeMixin implements _Faculty {
  const _$_Faculty({this.id, this.name, this.description});

  factory _$_Faculty.fromJson(Map<String, dynamic> json) =>
      _$$_FacultyFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Faculty(id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Faculty'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Faculty &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_FacultyCopyWith<_$_Faculty> get copyWith =>
      __$$_FacultyCopyWithImpl<_$_Faculty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacultyToJson(this);
  }
}

abstract class _Faculty implements Faculty {
  const factory _Faculty(
      {final int? id, final String? name, final int? description}) = _$_Faculty;

  factory _Faculty.fromJson(Map<String, dynamic> json) = _$_Faculty.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FacultyCopyWith<_$_Faculty> get copyWith =>
      throw _privateConstructorUsedError;
}
