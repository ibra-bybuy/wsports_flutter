// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentApi _$TournamentApiFromJson(Map<String, dynamic> json) =>
    TournamentApi(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$TournamentApiToJson(TournamentApi instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
