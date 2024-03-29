// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subjects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subjects _$SubjectsFromJson(Map<String, dynamic> json) {
  return _Subjects.fromJson(json);
}

/// @nodoc
mixin _$Subjects {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsCopyWith<Subjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsCopyWith<$Res> {
  factory $SubjectsCopyWith(Subjects value, $Res Function(Subjects) then) =
      _$SubjectsCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$SubjectsCopyWithImpl<$Res> implements $SubjectsCopyWith<$Res> {
  _$SubjectsCopyWithImpl(this._value, this._then);

  final Subjects _value;
  // ignore: unused_field
  final $Res Function(Subjects) _then;

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
abstract class _$$_SubjectsCopyWith<$Res> implements $SubjectsCopyWith<$Res> {
  factory _$$_SubjectsCopyWith(
          _$_Subjects value, $Res Function(_$_Subjects) then) =
      __$$_SubjectsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_SubjectsCopyWithImpl<$Res> extends _$SubjectsCopyWithImpl<$Res>
    implements _$$_SubjectsCopyWith<$Res> {
  __$$_SubjectsCopyWithImpl(
      _$_Subjects _value, $Res Function(_$_Subjects) _then)
      : super(_value, (v) => _then(v as _$_Subjects));

  @override
  _$_Subjects get _value => super._value as _$_Subjects;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Subjects(
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
class _$_Subjects with DiagnosticableTreeMixin implements _Subjects {
  const _$_Subjects({required this.id, required this.name});

  factory _$_Subjects.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectsFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Subjects(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Subjects'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subjects &&
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
  _$$_SubjectsCopyWith<_$_Subjects> get copyWith =>
      __$$_SubjectsCopyWithImpl<_$_Subjects>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectsToJson(this);
  }
}

abstract class _Subjects implements Subjects {
  const factory _Subjects({required final int id, required final String name}) =
      _$_Subjects;

  factory _Subjects.fromJson(Map<String, dynamic> json) = _$_Subjects.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectsCopyWith<_$_Subjects> get copyWith =>
      throw _privateConstructorUsedError;
}
