// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favorites _$FavoritesFromJson(Map<String, dynamic> json) {
  return _Favorites.fromJson(json);
}

/// @nodoc
mixin _$Favorites {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  University? get university => throw _privateConstructorUsedError;
  UserInfo? get user => throw _privateConstructorUsedError;
  Professions? get profession => throw _privateConstructorUsedError;
  News? get post => throw _privateConstructorUsedError;
  Speciality? get specialty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesCopyWith<Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) then) =
      _$FavoritesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? type,
      University? university,
      UserInfo? user,
      Professions? profession,
      News? post,
      Speciality? specialty});

  $UniversityCopyWith<$Res>? get university;
  $UserInfoCopyWith<$Res>? get user;
  $ProfessionsCopyWith<$Res>? get profession;
  $NewsCopyWith<$Res>? get post;
  $SpecialityCopyWith<$Res>? get specialty;
}

/// @nodoc
class _$FavoritesCopyWithImpl<$Res> implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._value, this._then);

  final Favorites _value;
  // ignore: unused_field
  final $Res Function(Favorites) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? university = freezed,
    Object? user = freezed,
    Object? profession = freezed,
    Object? post = freezed,
    Object? specialty = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Professions?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as News?,
      specialty: specialty == freezed
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as Speciality?,
    ));
  }

  @override
  $UniversityCopyWith<$Res>? get university {
    if (_value.university == null) {
      return null;
    }

    return $UniversityCopyWith<$Res>(_value.university!, (value) {
      return _then(_value.copyWith(university: value));
    });
  }

  @override
  $UserInfoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $ProfessionsCopyWith<$Res>? get profession {
    if (_value.profession == null) {
      return null;
    }

    return $ProfessionsCopyWith<$Res>(_value.profession!, (value) {
      return _then(_value.copyWith(profession: value));
    });
  }

  @override
  $NewsCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $NewsCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value));
    });
  }

  @override
  $SpecialityCopyWith<$Res>? get specialty {
    if (_value.specialty == null) {
      return null;
    }

    return $SpecialityCopyWith<$Res>(_value.specialty!, (value) {
      return _then(_value.copyWith(specialty: value));
    });
  }
}

/// @nodoc
abstract class _$$_FavoritesCopyWith<$Res> implements $FavoritesCopyWith<$Res> {
  factory _$$_FavoritesCopyWith(
          _$_Favorites value, $Res Function(_$_Favorites) then) =
      __$$_FavoritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? type,
      University? university,
      UserInfo? user,
      Professions? profession,
      News? post,
      Speciality? specialty});

  @override
  $UniversityCopyWith<$Res>? get university;
  @override
  $UserInfoCopyWith<$Res>? get user;
  @override
  $ProfessionsCopyWith<$Res>? get profession;
  @override
  $NewsCopyWith<$Res>? get post;
  @override
  $SpecialityCopyWith<$Res>? get specialty;
}

/// @nodoc
class __$$_FavoritesCopyWithImpl<$Res> extends _$FavoritesCopyWithImpl<$Res>
    implements _$$_FavoritesCopyWith<$Res> {
  __$$_FavoritesCopyWithImpl(
      _$_Favorites _value, $Res Function(_$_Favorites) _then)
      : super(_value, (v) => _then(v as _$_Favorites));

  @override
  _$_Favorites get _value => super._value as _$_Favorites;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? university = freezed,
    Object? user = freezed,
    Object? profession = freezed,
    Object? post = freezed,
    Object? specialty = freezed,
  }) {
    return _then(_$_Favorites(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Professions?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as News?,
      specialty: specialty == freezed
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as Speciality?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favorites with DiagnosticableTreeMixin implements _Favorites {
  const _$_Favorites(
      {this.id,
      this.type,
      this.university,
      this.user,
      this.profession,
      this.post,
      this.specialty});

  factory _$_Favorites.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  final University? university;
  @override
  final UserInfo? user;
  @override
  final Professions? profession;
  @override
  final News? post;
  @override
  final Speciality? specialty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Favorites(id: $id, type: $type, university: $university, user: $user, profession: $profession, post: $post, specialty: $specialty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Favorites'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('university', university))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('profession', profession))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('specialty', specialty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favorites &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.university, university) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.profession, profession) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.specialty, specialty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(university),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(profession),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(specialty));

  @JsonKey(ignore: true)
  @override
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      __$$_FavoritesCopyWithImpl<_$_Favorites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesToJson(this);
  }
}

abstract class _Favorites implements Favorites {
  const factory _Favorites(
      {final int? id,
      final String? type,
      final University? university,
      final UserInfo? user,
      final Professions? profession,
      final News? post,
      final Speciality? specialty}) = _$_Favorites;

  factory _Favorites.fromJson(Map<String, dynamic> json) =
      _$_Favorites.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  University? get university => throw _privateConstructorUsedError;
  @override
  UserInfo? get user => throw _privateConstructorUsedError;
  @override
  Professions? get profession => throw _privateConstructorUsedError;
  @override
  News? get post => throw _privateConstructorUsedError;
  @override
  Speciality? get specialty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}
