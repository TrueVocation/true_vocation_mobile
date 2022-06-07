// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'professions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Professions _$ProfessionsFromJson(Map<String, dynamic> json) {
  return _Professions.fromJson(json);
}

/// @nodoc
mixin _$Professions {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get employability => throw _privateConstructorUsedError;
  int get averageSalary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionsCopyWith<Professions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionsCopyWith<$Res> {
  factory $ProfessionsCopyWith(
          Professions value, $Res Function(Professions) then) =
      _$ProfessionsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String description,
      String employability,
      int averageSalary});
}

/// @nodoc
class _$ProfessionsCopyWithImpl<$Res> implements $ProfessionsCopyWith<$Res> {
  _$ProfessionsCopyWithImpl(this._value, this._then);

  final Professions _value;
  // ignore: unused_field
  final $Res Function(Professions) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? employability = freezed,
    Object? averageSalary = freezed,
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
      employability: employability == freezed
          ? _value.employability
          : employability // ignore: cast_nullable_to_non_nullable
              as String,
      averageSalary: averageSalary == freezed
          ? _value.averageSalary
          : averageSalary // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfessionsCopyWith<$Res>
    implements $ProfessionsCopyWith<$Res> {
  factory _$$_ProfessionsCopyWith(
          _$_Professions value, $Res Function(_$_Professions) then) =
      __$$_ProfessionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String description,
      String employability,
      int averageSalary});
}

/// @nodoc
class __$$_ProfessionsCopyWithImpl<$Res> extends _$ProfessionsCopyWithImpl<$Res>
    implements _$$_ProfessionsCopyWith<$Res> {
  __$$_ProfessionsCopyWithImpl(
      _$_Professions _value, $Res Function(_$_Professions) _then)
      : super(_value, (v) => _then(v as _$_Professions));

  @override
  _$_Professions get _value => super._value as _$_Professions;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? employability = freezed,
    Object? averageSalary = freezed,
  }) {
    return _then(_$_Professions(
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
      employability: employability == freezed
          ? _value.employability
          : employability // ignore: cast_nullable_to_non_nullable
              as String,
      averageSalary: averageSalary == freezed
          ? _value.averageSalary
          : averageSalary // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Professions with DiagnosticableTreeMixin implements _Professions {
  const _$_Professions(
      {required this.id,
      required this.name,
      required this.description,
      required this.employability,
      required this.averageSalary});

  factory _$_Professions.fromJson(Map<String, dynamic> json) =>
      _$$_ProfessionsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String employability;
  @override
  final int averageSalary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Professions(id: $id, name: $name, description: $description, employability: $employability, averageSalary: $averageSalary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Professions'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('employability', employability))
      ..add(DiagnosticsProperty('averageSalary', averageSalary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Professions &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.employability, employability) &&
            const DeepCollectionEquality()
                .equals(other.averageSalary, averageSalary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(employability),
      const DeepCollectionEquality().hash(averageSalary));

  @JsonKey(ignore: true)
  @override
  _$$_ProfessionsCopyWith<_$_Professions> get copyWith =>
      __$$_ProfessionsCopyWithImpl<_$_Professions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfessionsToJson(this);
  }
}

abstract class _Professions implements Professions {
  const factory _Professions(
      {required final int id,
      required final String name,
      required final String description,
      required final String employability,
      required final int averageSalary}) = _$_Professions;

  factory _Professions.fromJson(Map<String, dynamic> json) =
      _$_Professions.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get employability => throw _privateConstructorUsedError;
  @override
  int get averageSalary => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfessionsCopyWith<_$_Professions> get copyWith =>
      throw _privateConstructorUsedError;
}
