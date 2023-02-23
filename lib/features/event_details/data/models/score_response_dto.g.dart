// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreResponseDto _$ScoreResponseDtoFromJson(Map<String, dynamic> json) =>
    ScoreResponseDto(
      stages: (json['Stages'] as List<dynamic>?)
              ?.map((e) =>
                  ScoreResponseDtoStages.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ScoreResponseDtoToJson(ScoreResponseDto instance) =>
    <String, dynamic>{
      'Stages': instance.stages,
    };

ScoreResponseDtoStages _$ScoreResponseDtoStagesFromJson(
        Map<String, dynamic> json) =>
    ScoreResponseDtoStages(
      sid: json['Sid'] as String? ?? "",
      snm: json['Snm'] as String? ?? "",
      scd: json['Scd'] as String? ?? "",
      cid: json['Cid'] as String? ?? "",
      cnm: json['Cnm'] as String? ?? "",
      csnm: json['Csnm'] as String? ?? "",
      ccd: json['Ccd'] as String? ?? "",
      compId: json['CompId'] as String? ?? "",
      compN: json['CompN'] as String? ?? "",
      compD: json['CompD'] as String? ?? "",
      scu: json['Scu'] as int? ?? 0,
      chi: json['Chi'] as int? ?? 0,
      shi: json['Shi'] as int? ?? 0,
      ccdiso: json['Ccdiso'] as String? ?? "",
      sdn: json['Sdn'] as String? ?? "",
      events: (json['Events'] as List<dynamic>?)
              ?.map((e) => ScoreResponseDtoStagesEvents.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ScoreResponseDtoStagesToJson(
        ScoreResponseDtoStages instance) =>
    <String, dynamic>{
      'Sid': instance.sid,
      'Snm': instance.snm,
      'Scd': instance.scd,
      'Cid': instance.cid,
      'Cnm': instance.cnm,
      'Csnm': instance.csnm,
      'Ccd': instance.ccd,
      'CompId': instance.compId,
      'CompN': instance.compN,
      'CompD': instance.compD,
      'Scu': instance.scu,
      'Chi': instance.chi,
      'Shi': instance.shi,
      'Ccdiso': instance.ccdiso,
      'Sdn': instance.sdn,
      'Events': instance.events,
    };

ScoreResponseDtoStagesEvents _$ScoreResponseDtoStagesEventsFromJson(
        Map<String, dynamic> json) =>
    ScoreResponseDtoStagesEvents(
      eid: json['Eid'] as String? ?? "",
      tr1: json['Tr1'] as String? ?? "",
      tr2: json['Tr2'] as String? ?? "",
      tr1Or: json['Tr1OR'] as String? ?? "",
      tr2Or: json['Tr2OR'] as String? ?? "",
      t1: (json['T1'] as List<dynamic>?)
              ?.map((e) => ScoreResponseDtoStagesEventsT1.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      t2: (json['T2'] as List<dynamic>?)
              ?.map((e) => ScoreResponseDtoStagesEventsT2.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      eps: json['Eps'] as String? ?? "",
      esid: json['Esid'] as int? ?? 0,
      epr: json['Epr'] as int? ?? 0,
      ecov: json['Ecov'] as int? ?? 0,
      ern: json['Ern'] as int? ?? 0,
      ernInf: json['ErnInf'] as String? ?? "",
      et: json['Et'] as int? ?? 0,
      esd: json['Esd'] as int? ?? 0,
      luUt: json['LuUT'] as int? ?? 0,
      eds: json['Eds'] as int? ?? 0,
      eact: json['Eact'] as int? ?? 0,
      eo: json['EO'] as int? ?? 0,
      incsX: json['IncsX'] as int? ?? 0,
      comX: json['ComX'] as int? ?? 0,
      luX: json['LuX'] as int? ?? 0,
      statX: json['StatX'] as int? ?? 0,
      subsX: json['SubsX'] as int? ?? 0,
      sdFowX: json['SDFowX'] as int? ?? 0,
      sdInnX: json['SDInnX'] as int? ?? 0,
      luC: json['LuC'] as int? ?? 0,
      ehid: json['Ehid'] as int? ?? 0,
      spid: json['Spid'] as int? ?? 0,
      stg: json['Stg'] == null
          ? const ScoreResponseDtoStagesEventsStg()
          : ScoreResponseDtoStagesEventsStg.fromJson(
              json['Stg'] as Map<String, dynamic>),
      pid: json['Pid'] as int? ?? 0,
    );

Map<String, dynamic> _$ScoreResponseDtoStagesEventsToJson(
        ScoreResponseDtoStagesEvents instance) =>
    <String, dynamic>{
      'Eid': instance.eid,
      'Tr1': instance.tr1,
      'Tr2': instance.tr2,
      'Tr1OR': instance.tr1Or,
      'Tr2OR': instance.tr2Or,
      'T1': instance.t1,
      'T2': instance.t2,
      'Eps': instance.eps,
      'Esid': instance.esid,
      'Epr': instance.epr,
      'Ecov': instance.ecov,
      'Ern': instance.ern,
      'ErnInf': instance.ernInf,
      'Et': instance.et,
      'Esd': instance.esd,
      'LuUT': instance.luUt,
      'Eds': instance.eds,
      'Eact': instance.eact,
      'EO': instance.eo,
      'IncsX': instance.incsX,
      'ComX': instance.comX,
      'LuX': instance.luX,
      'StatX': instance.statX,
      'SubsX': instance.subsX,
      'SDFowX': instance.sdFowX,
      'SDInnX': instance.sdInnX,
      'LuC': instance.luC,
      'Ehid': instance.ehid,
      'Spid': instance.spid,
      'Stg': instance.stg,
      'Pid': instance.pid,
    };

ScoreResponseDtoStagesEventsT1 _$ScoreResponseDtoStagesEventsT1FromJson(
        Map<String, dynamic> json) =>
    ScoreResponseDtoStagesEventsT1(
      nm: json['Nm'] as String? ?? "",
      id: json['ID'] as String? ?? "",
      img: json['Img'] as String? ?? "",
      newsTag: json['NewsTag'] as String? ?? "",
      abr: json['Abr'] as String? ?? "",
      tbd: json['tbd'] as int? ?? 0,
      gd: json['Gd'] as int? ?? 0,
      coNm: json['CoNm'] as String? ?? "",
      coId: json['CoId'] as String? ?? "",
      hasVideo: json['HasVideo'] as bool? ?? false,
    );

Map<String, dynamic> _$ScoreResponseDtoStagesEventsT1ToJson(
        ScoreResponseDtoStagesEventsT1 instance) =>
    <String, dynamic>{
      'Nm': instance.nm,
      'ID': instance.id,
      'Img': instance.img,
      'NewsTag': instance.newsTag,
      'Abr': instance.abr,
      'tbd': instance.tbd,
      'Gd': instance.gd,
      'CoNm': instance.coNm,
      'CoId': instance.coId,
      'HasVideo': instance.hasVideo,
    };

ScoreResponseDtoStagesEventsT2 _$ScoreResponseDtoStagesEventsT2FromJson(
        Map<String, dynamic> json) =>
    ScoreResponseDtoStagesEventsT2(
      nm: json['Nm'] as String? ?? "",
      id: json['ID'] as String? ?? "",
      img: json['Img'] as String? ?? "",
      newsTag: json['NewsTag'] as String? ?? "",
      abr: json['Abr'] as String? ?? "",
      tbd: json['tbd'] as int? ?? 0,
      gd: json['Gd'] as int? ?? 0,
      coNm: json['CoNm'] as String? ?? "",
      coId: json['CoId'] as String? ?? "",
      hasVideo: json['HasVideo'] as bool? ?? false,
    );

Map<String, dynamic> _$ScoreResponseDtoStagesEventsT2ToJson(
        ScoreResponseDtoStagesEventsT2 instance) =>
    <String, dynamic>{
      'Nm': instance.nm,
      'ID': instance.id,
      'Img': instance.img,
      'NewsTag': instance.newsTag,
      'Abr': instance.abr,
      'tbd': instance.tbd,
      'Gd': instance.gd,
      'CoNm': instance.coNm,
      'CoId': instance.coId,
      'HasVideo': instance.hasVideo,
    };

ScoreResponseDtoStagesEventsStg _$ScoreResponseDtoStagesEventsStgFromJson(
        Map<String, dynamic> json) =>
    ScoreResponseDtoStagesEventsStg(
      sid: json['Sid'] as String? ?? "",
      snm: json['Snm'] as String? ?? "",
      scd: json['Scd'] as String? ?? "",
      cid: json['Cid'] as String? ?? "",
      cnm: json['Cnm'] as String? ?? "",
      csnm: json['Csnm'] as String? ?? "",
      ccd: json['Ccd'] as String? ?? "",
      compId: json['CompId'] as String? ?? "",
      compN: json['CompN'] as String? ?? "",
      compD: json['CompD'] as String? ?? "",
      scu: json['Scu'] as int? ?? 0,
      chi: json['Chi'] as int? ?? 0,
      shi: json['Shi'] as int? ?? 0,
      ccdiso: json['Ccdiso'] as String? ?? "",
      sdn: json['Sdn'] as String? ?? "",
    );

Map<String, dynamic> _$ScoreResponseDtoStagesEventsStgToJson(
        ScoreResponseDtoStagesEventsStg instance) =>
    <String, dynamic>{
      'Sid': instance.sid,
      'Snm': instance.snm,
      'Scd': instance.scd,
      'Cid': instance.cid,
      'Cnm': instance.cnm,
      'Csnm': instance.csnm,
      'Ccd': instance.ccd,
      'CompId': instance.compId,
      'CompN': instance.compN,
      'CompD': instance.compD,
      'Scu': instance.scu,
      'Chi': instance.chi,
      'Shi': instance.shi,
      'Ccdiso': instance.ccdiso,
      'Sdn': instance.sdn,
    };
