// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomResponse _$CustomResponseFromJson(Map<String, dynamic> json) {
  return _CustomResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomResponse {
  int get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomResponseCopyWith<CustomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomResponseCopyWith<$Res> {
  factory $CustomResponseCopyWith(
          CustomResponse value, $Res Function(CustomResponse) then) =
      _$CustomResponseCopyWithImpl<$Res>;
  $Res call({int code, String title, dynamic body});
}

/// @nodoc
class _$CustomResponseCopyWithImpl<$Res>
    implements $CustomResponseCopyWith<$Res> {
  _$CustomResponseCopyWithImpl(this._value, this._then);

  final CustomResponse _value;
  // ignore: unused_field
  final $Res Function(CustomResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomResponseCopyWith<$Res>
    implements $CustomResponseCopyWith<$Res> {
  factory _$$_CustomResponseCopyWith(
          _$_CustomResponse value, $Res Function(_$_CustomResponse) then) =
      __$$_CustomResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, String title, dynamic body});
}

/// @nodoc
class __$$_CustomResponseCopyWithImpl<$Res>
    extends _$CustomResponseCopyWithImpl<$Res>
    implements _$$_CustomResponseCopyWith<$Res> {
  __$$_CustomResponseCopyWithImpl(
      _$_CustomResponse _value, $Res Function(_$_CustomResponse) _then)
      : super(_value, (v) => _then(v as _$_CustomResponse));

  @override
  _$_CustomResponse get _value => super._value as _$_CustomResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_CustomResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomResponse
    with DiagnosticableTreeMixin
    implements _CustomResponse {
  const _$_CustomResponse({required this.code, required this.title, this.body});

  factory _$_CustomResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomResponseFromJson(json);

  @override
  final int code;
  @override
  final String title;
  @override
  final dynamic body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomResponse(code: $code, title: $title, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomResponse &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_CustomResponseCopyWith<_$_CustomResponse> get copyWith =>
      __$$_CustomResponseCopyWithImpl<_$_CustomResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomResponseToJson(this);
  }
}

abstract class _CustomResponse implements CustomResponse {
  const factory _CustomResponse(
      {required final int code,
      required final String title,
      final dynamic body}) = _$_CustomResponse;

  factory _CustomResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  dynamic get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CustomResponseCopyWith<_$_CustomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
