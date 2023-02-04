// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePageState _$CreatePageStateFromJson(Map<String, dynamic> json) {
  return _CreatePageState.fromJson(json);
}

/// @nodoc
mixin _$CreatePageState {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePageStateCopyWith<CreatePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePageStateCopyWith<$Res> {
  factory $CreatePageStateCopyWith(
          CreatePageState value, $Res Function(CreatePageState) then) =
      _$CreatePageStateCopyWithImpl<$Res, CreatePageState>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$CreatePageStateCopyWithImpl<$Res, $Val extends CreatePageState>
    implements $CreatePageStateCopyWith<$Res> {
  _$CreatePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePageStateCopyWith<$Res>
    implements $CreatePageStateCopyWith<$Res> {
  factory _$$_CreatePageStateCopyWith(
          _$_CreatePageState value, $Res Function(_$_CreatePageState) then) =
      __$$_CreatePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_CreatePageStateCopyWithImpl<$Res>
    extends _$CreatePageStateCopyWithImpl<$Res, _$_CreatePageState>
    implements _$$_CreatePageStateCopyWith<$Res> {
  __$$_CreatePageStateCopyWithImpl(
      _$_CreatePageState _value, $Res Function(_$_CreatePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_CreatePageState(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePageState
    with DiagnosticableTreeMixin
    implements _CreatePageState {
  const _$_CreatePageState({this.text = ''});

  factory _$_CreatePageState.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePageStateFromJson(json);

  @override
  @JsonKey()
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePageState(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePageState'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePageState &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePageStateCopyWith<_$_CreatePageState> get copyWith =>
      __$$_CreatePageStateCopyWithImpl<_$_CreatePageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePageStateToJson(
      this,
    );
  }
}

abstract class _CreatePageState implements CreatePageState {
  const factory _CreatePageState({final String text}) = _$_CreatePageState;

  factory _CreatePageState.fromJson(Map<String, dynamic> json) =
      _$_CreatePageState.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePageStateCopyWith<_$_CreatePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
