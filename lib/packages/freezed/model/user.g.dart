// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      level: $enumDecodeNullable(_$LevelUserEnumMap, json['level']) ??
          LevelUser.normal,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'level': _$LevelUserEnumMap[instance.level]!,
      'runtimeType': instance.$type,
    };

const _$LevelUserEnumMap = {
  LevelUser.basic: 'basic',
  LevelUser.normal: 'normal',
  LevelUser.advanced: 'advanced',
};

_$_Admin _$$_AdminFromJson(Map<String, dynamic> json) => _$_Admin(
      level: $enumDecode(_$LevelUserEnumMap, json['level']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AdminToJson(_$_Admin instance) => <String, dynamic>{
      'level': _$LevelUserEnumMap[instance.level]!,
      'runtimeType': instance.$type,
    };

_$_Support _$$_SupportFromJson(Map<String, dynamic> json) => _$_Support(
      level: $enumDecode(_$LevelUserEnumMap, json['level']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_SupportToJson(_$_Support instance) =>
    <String, dynamic>{
      'level': _$LevelUserEnumMap[instance.level]!,
      'runtimeType': instance.$type,
    };
