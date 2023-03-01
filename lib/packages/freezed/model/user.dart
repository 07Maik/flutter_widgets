import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User.common(
      {required String id,
      required String nickname,
      @Default(LevelUser.normal) LevelUser level}) = _User;

  const factory User.admin({required LevelUser level}) = _Admin;

  const factory User.support({required LevelUser level}) = _Support;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  void printGreeting() => debugPrint("Hello World");
}

enum LevelUser { basic, normal, advanced }
