// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentApi _$TournamentApiFromJson(Map<String, dynamic> json) =>
    TournamentApi(
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$TournamentApiToJson(TournamentApi instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
