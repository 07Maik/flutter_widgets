// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'common':
      return _User.fromJson(json);
    case 'admin':
      return _Admin.fromJson(json);
    case 'support':
      return _Support.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  LevelUser get level => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String nickname, LevelUser level)
        common,
    required TResult Function(LevelUser level) admin,
    required TResult Function(LevelUser level) support,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String nickname, LevelUser level)? common,
    TResult? Function(LevelUser level)? admin,
    TResult? Function(LevelUser level)? support,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String nickname, LevelUser level)? common,
    TResult Function(LevelUser level)? admin,
    TResult Function(LevelUser level)? support,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) common,
    required TResult Function(_Admin value) admin,
    required TResult Function(_Support value) support,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? common,
    TResult? Function(_Admin value)? admin,
    TResult? Function(_Support value)? support,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? common,
    TResult Function(_Admin value)? admin,
    TResult Function(_Support value)? support,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({LevelUser level});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelUser,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickname, LevelUser level});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? level = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {required this.id,
      required this.nickname,
      this.level = LevelUser.normal,
      final String? $type})
      : $type = $type ?? 'common',
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String nickname;
  @override
  @JsonKey()
  final LevelUser level;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User.common(id: $id, nickname: $nickname, level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User.common'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String nickname, LevelUser level)
        common,
    required TResult Function(LevelUser level) admin,
    required TResult Function(LevelUser level) support,
  }) {
    return common(id, nickname, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String nickname, LevelUser level)? common,
    TResult? Function(LevelUser level)? admin,
    TResult? Function(LevelUser level)? support,
  }) {
    return common?.call(id, nickname, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String nickname, LevelUser level)? common,
    TResult Function(LevelUser level)? admin,
    TResult Function(LevelUser level)? support,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(id, nickname, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) common,
    required TResult Function(_Admin value) admin,
    required TResult Function(_Support value) support,
  }) {
    return common(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? common,
    TResult? Function(_Admin value)? admin,
    TResult? Function(_Support value)? support,
  }) {
    return common?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? common,
    TResult Function(_Admin value)? admin,
    TResult Function(_Support value)? support,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      required final String nickname,
      final LevelUser level}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  String get id;
  String get nickname;
  @override
  LevelUser get level;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_AdminCopyWith(_$_Admin value, $Res Function(_$_Admin) then) =
      __$$_AdminCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LevelUser level});
}

/// @nodoc
class __$$_AdminCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_Admin>
    implements _$$_AdminCopyWith<$Res> {
  __$$_AdminCopyWithImpl(_$_Admin _value, $Res Function(_$_Admin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$_Admin(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Admin extends _Admin with DiagnosticableTreeMixin {
  const _$_Admin({required this.level, final String? $type})
      : $type = $type ?? 'admin',
        super._();

  factory _$_Admin.fromJson(Map<String, dynamic> json) =>
      _$$_AdminFromJson(json);

  @override
  final LevelUser level;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User.admin(level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User.admin'))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Admin &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminCopyWith<_$_Admin> get copyWith =>
      __$$_AdminCopyWithImpl<_$_Admin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String nickname, LevelUser level)
        common,
    required TResult Function(LevelUser level) admin,
    required TResult Function(LevelUser level) support,
  }) {
    return admin(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String nickname, LevelUser level)? common,
    TResult? Function(LevelUser level)? admin,
    TResult? Function(LevelUser level)? support,
  }) {
    return admin?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String nickname, LevelUser level)? common,
    TResult Function(LevelUser level)? admin,
    TResult Function(LevelUser level)? support,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) common,
    required TResult Function(_Admin value) admin,
    required TResult Function(_Support value) support,
  }) {
    return admin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? common,
    TResult? Function(_Admin value)? admin,
    TResult? Function(_Support value)? support,
  }) {
    return admin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? common,
    TResult Function(_Admin value)? admin,
    TResult Function(_Support value)? support,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminToJson(
      this,
    );
  }
}

abstract class _Admin extends User {
  const factory _Admin({required final LevelUser level}) = _$_Admin;
  const _Admin._() : super._();

  factory _Admin.fromJson(Map<String, dynamic> json) = _$_Admin.fromJson;

  @override
  LevelUser get level;
  @override
  @JsonKey(ignore: true)
  _$$_AdminCopyWith<_$_Admin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SupportCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_SupportCopyWith(
          _$_Support value, $Res Function(_$_Support) then) =
      __$$_SupportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LevelUser level});
}

/// @nodoc
class __$$_SupportCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$_Support>
    implements _$$_SupportCopyWith<$Res> {
  __$$_SupportCopyWithImpl(_$_Support _value, $Res Function(_$_Support) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$_Support(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Support extends _Support with DiagnosticableTreeMixin {
  const _$_Support({required this.level, final String? $type})
      : $type = $type ?? 'support',
        super._();

  factory _$_Support.fromJson(Map<String, dynamic> json) =>
      _$$_SupportFromJson(json);

  @override
  final LevelUser level;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User.support(level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User.support'))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Support &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportCopyWith<_$_Support> get copyWith =>
      __$$_SupportCopyWithImpl<_$_Support>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String nickname, LevelUser level)
        common,
    required TResult Function(LevelUser level) admin,
    required TResult Function(LevelUser level) support,
  }) {
    return support(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String nickname, LevelUser level)? common,
    TResult? Function(LevelUser level)? admin,
    TResult? Function(LevelUser level)? support,
  }) {
    return support?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String nickname, LevelUser level)? common,
    TResult Function(LevelUser level)? admin,
    TResult Function(LevelUser level)? support,
    required TResult orElse(),
  }) {
    if (support != null) {
      return support(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) common,
    required TResult Function(_Admin value) admin,
    required TResult Function(_Support value) support,
  }) {
    return support(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? common,
    TResult? Function(_Admin value)? admin,
    TResult? Function(_Support value)? support,
  }) {
    return support?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? common,
    TResult Function(_Admin value)? admin,
    TResult Function(_Support value)? support,
    required TResult orElse(),
  }) {
    if (support != null) {
      return support(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportToJson(
      this,
    );
  }
}

abstract class _Support extends User {
  const factory _Support({required final LevelUser level}) = _$_Support;
  const _Support._() : super._();

  factory _Support.fromJson(Map<String, dynamic> json) = _$_Support.fromJson;

  @override
  LevelUser get level;
  @override
  @JsonKey(ignore: true)
  _$$_SupportCopyWith<_$_Support> get copyWith =>
      throw _privateConstructorUsedError;
}
