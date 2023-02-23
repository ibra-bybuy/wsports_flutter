import 'package:json_annotation/json_annotation.dart';

part 'score_response_dto.g.dart';

@JsonSerializable()
class ScoreResponseDto {
  @JsonKey(name: 'Stages')
  final List<ScoreResponseDtoStages> stages;
  const ScoreResponseDto({
    this.stages = const [],
  });

  factory ScoreResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreResponseDtoToJson(this);

  ScoreResponseDto copyWith({
    List<ScoreResponseDtoStages>? stages,
  }) {
    return ScoreResponseDto(
      stages: stages ?? this.stages,
    );
  }
}

@JsonSerializable()
class ScoreResponseDtoStages {
  @JsonKey(name: 'Sid')
  final String sid;
  @JsonKey(name: 'Snm')
  final String snm;
  @JsonKey(name: 'Scd')
  final String scd;
  @JsonKey(name: 'Cid')
  final String cid;
  @JsonKey(name: 'Cnm')
  final String cnm;
  @JsonKey(name: 'Csnm')
  final String csnm;
  @JsonKey(name: 'Ccd')
  final String ccd;
  @JsonKey(name: 'CompId')
  final String compId;
  @JsonKey(name: 'CompN')
  final String compN;
  @JsonKey(name: 'CompD')
  final String compD;
  @JsonKey(name: 'Scu')
  final int scu;
  @JsonKey(name: 'Chi')
  final int chi;
  @JsonKey(name: 'Shi')
  final int shi;
  @JsonKey(name: 'Ccdiso')
  final String ccdiso;
  @JsonKey(name: 'Sdn')
  final String sdn;
  @JsonKey(name: 'Events')
  final List<ScoreResponseDtoStagesEvents> events;
  const ScoreResponseDtoStages({
    this.sid = "",
    this.snm = "",
    this.scd = "",
    this.cid = "",
    this.cnm = "",
    this.csnm = "",
    this.ccd = "",
    this.compId = "",
    this.compN = "",
    this.compD = "",
    this.scu = 0,
    this.chi = 0,
    this.shi = 0,
    this.ccdiso = "",
    this.sdn = "",
    this.events = const [],
  });

  factory ScoreResponseDtoStages.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseDtoStagesFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreResponseDtoStagesToJson(this);

  ScoreResponseDtoStages copyWith({
    String? sid,
    String? snm,
    String? scd,
    String? cid,
    String? cnm,
    String? csnm,
    String? ccd,
    String? compId,
    String? compN,
    String? compD,
    int? scu,
    int? chi,
    int? shi,
    String? ccdiso,
    String? sdn,
    List<ScoreResponseDtoStagesEvents>? events,
  }) {
    return ScoreResponseDtoStages(
      sid: sid ?? this.sid,
      snm: snm ?? this.snm,
      scd: scd ?? this.scd,
      cid: cid ?? this.cid,
      cnm: cnm ?? this.cnm,
      csnm: csnm ?? this.csnm,
      ccd: ccd ?? this.ccd,
      compId: compId ?? this.compId,
      compN: compN ?? this.compN,
      compD: compD ?? this.compD,
      scu: scu ?? this.scu,
      chi: chi ?? this.chi,
      shi: shi ?? this.shi,
      ccdiso: ccdiso ?? this.ccdiso,
      sdn: sdn ?? this.sdn,
      events: events ?? this.events,
    );
  }
}

@JsonSerializable()
class ScoreResponseDtoStagesEvents {
  @JsonKey(name: 'Eid')
  final String eid;
  @JsonKey(name: 'Tr1')
  final String tr1;
  @JsonKey(name: 'Tr2')
  final String tr2;
  @JsonKey(name: 'Tr1OR')
  final String tr1Or;
  @JsonKey(name: 'Tr2OR')
  final String tr2Or;
  @JsonKey(name: 'T1')
  final List<ScoreResponseDtoStagesEventsT1> t1;
  @JsonKey(name: 'T2')
  final List<ScoreResponseDtoStagesEventsT2> t2;
  @JsonKey(name: 'Eps')
  final String eps;
  @JsonKey(name: 'Esid')
  final int esid;
  @JsonKey(name: 'Epr')
  final int epr;
  @JsonKey(name: 'Ecov')
  final int ecov;
  @JsonKey(name: 'Ern')
  final int ern;
  @JsonKey(name: 'ErnInf')
  final String ernInf;
  @JsonKey(name: 'Et')
  final int et;
  @JsonKey(name: 'Esd')
  final int esd;
  @JsonKey(name: 'LuUT')
  final int luUt;
  @JsonKey(name: 'Eds')
  final int eds;
  @JsonKey(name: 'Eact')
  final int eact;
  @JsonKey(name: 'EO')
  final int eo;
  @JsonKey(name: 'IncsX')
  final int incsX;
  @JsonKey(name: 'ComX')
  final int comX;
  @JsonKey(name: 'LuX')
  final int luX;
  @JsonKey(name: 'StatX')
  final int statX;
  @JsonKey(name: 'SubsX')
  final int subsX;
  @JsonKey(name: 'SDFowX')
  final int sdFowX;
  @JsonKey(name: 'SDInnX')
  final int sdInnX;
  @JsonKey(name: 'LuC')
  final int luC;
  @JsonKey(name: 'Ehid')
  final int ehid;
  @JsonKey(name: 'Spid')
  final int spid;
  @JsonKey(name: 'Stg')
  final ScoreResponseDtoStagesEventsStg stg;
  @JsonKey(name: 'Pid')
  final int pid;
  const ScoreResponseDtoStagesEvents({
    this.eid = "",
    this.tr1 = "",
    this.tr2 = "",
    this.tr1Or = "",
    this.tr2Or = "",
    this.t1 = const [],
    this.t2 = const [],
    this.eps = "",
    this.esid = 0,
    this.epr = 0,
    this.ecov = 0,
    this.ern = 0,
    this.ernInf = "",
    this.et = 0,
    this.esd = 0,
    this.luUt = 0,
    this.eds = 0,
    this.eact = 0,
    this.eo = 0,
    this.incsX = 0,
    this.comX = 0,
    this.luX = 0,
    this.statX = 0,
    this.subsX = 0,
    this.sdFowX = 0,
    this.sdInnX = 0,
    this.luC = 0,
    this.ehid = 0,
    this.spid = 0,
    this.stg = const ScoreResponseDtoStagesEventsStg(),
    this.pid = 0,
  });

  factory ScoreResponseDtoStagesEvents.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseDtoStagesEventsFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreResponseDtoStagesEventsToJson(this);

  ScoreResponseDtoStagesEvents copyWith({
    String? eid,
    String? tr1,
    String? tr2,
    String? tr1Or,
    String? tr2Or,
    List<ScoreResponseDtoStagesEventsT1>? t1,
    List<ScoreResponseDtoStagesEventsT2>? t2,
    String? eps,
    int? esid,
    int? epr,
    int? ecov,
    int? ern,
    String? ernInf,
    int? et,
    int? esd,
    int? luUt,
    int? eds,
    int? eact,
    int? eo,
    int? incsX,
    int? comX,
    int? luX,
    int? statX,
    int? subsX,
    int? sdFowX,
    int? sdInnX,
    int? luC,
    int? ehid,
    int? spid,
    ScoreResponseDtoStagesEventsStg? stg,
    int? pid,
  }) {
    return ScoreResponseDtoStagesEvents(
      eid: eid ?? this.eid,
      tr1: tr1 ?? this.tr1,
      tr2: tr2 ?? this.tr2,
      tr1Or: tr1Or ?? this.tr1Or,
      tr2Or: tr2Or ?? this.tr2Or,
      t1: t1 ?? this.t1,
      t2: t2 ?? this.t2,
      eps: eps ?? this.eps,
      esid: esid ?? this.esid,
      epr: epr ?? this.epr,
      ecov: ecov ?? this.ecov,
      ern: ern ?? this.ern,
      ernInf: ernInf ?? this.ernInf,
      et: et ?? this.et,
      esd: esd ?? this.esd,
      luUt: luUt ?? this.luUt,
      eds: eds ?? this.eds,
      eact: eact ?? this.eact,
      eo: eo ?? this.eo,
      incsX: incsX ?? this.incsX,
      comX: comX ?? this.comX,
      luX: luX ?? this.luX,
      statX: statX ?? this.statX,
      subsX: subsX ?? this.subsX,
      sdFowX: sdFowX ?? this.sdFowX,
      sdInnX: sdInnX ?? this.sdInnX,
      luC: luC ?? this.luC,
      ehid: ehid ?? this.ehid,
      spid: spid ?? this.spid,
      stg: stg ?? this.stg,
      pid: pid ?? this.pid,
    );
  }
}

@JsonSerializable()
class ScoreResponseDtoStagesEventsT1 {
  @JsonKey(name: 'Nm')
  final String nm;
  @JsonKey(name: 'ID')
  final String id;
  @JsonKey(name: 'Img')
  final String img;
  @JsonKey(name: 'NewsTag')
  final String newsTag;
  @JsonKey(name: 'Abr')
  final String abr;
  @JsonKey(name: 'tbd')
  final int tbd;
  @JsonKey(name: 'Gd')
  final int gd;
  @JsonKey(name: 'CoNm')
  final String coNm;
  @JsonKey(name: 'CoId')
  final String coId;
  @JsonKey(name: 'HasVideo')
  final bool hasVideo;
  const ScoreResponseDtoStagesEventsT1({
    this.nm = "",
    this.id = "",
    this.img = "",
    this.newsTag = "",
    this.abr = "",
    this.tbd = 0,
    this.gd = 0,
    this.coNm = "",
    this.coId = "",
    this.hasVideo = false,
  });

  factory ScoreResponseDtoStagesEventsT1.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseDtoStagesEventsT1FromJson(json);

  Map<String, dynamic> toJson() => _$ScoreResponseDtoStagesEventsT1ToJson(this);

  ScoreResponseDtoStagesEventsT1 copyWith({
    String? nm,
    String? id,
    String? img,
    String? newsTag,
    String? abr,
    int? tbd,
    int? gd,
    String? coNm,
    String? coId,
    bool? hasVideo,
  }) {
    return ScoreResponseDtoStagesEventsT1(
      nm: nm ?? this.nm,
      id: id ?? this.id,
      img: img ?? this.img,
      newsTag: newsTag ?? this.newsTag,
      abr: abr ?? this.abr,
      tbd: tbd ?? this.tbd,
      gd: gd ?? this.gd,
      coNm: coNm ?? this.coNm,
      coId: coId ?? this.coId,
      hasVideo: hasVideo ?? this.hasVideo,
    );
  }
}

@JsonSerializable()
class ScoreResponseDtoStagesEventsT2 {
  @JsonKey(name: 'Nm')
  final String nm;
  @JsonKey(name: 'ID')
  final String id;
  @JsonKey(name: 'Img')
  final String img;
  @JsonKey(name: 'NewsTag')
  final String newsTag;
  @JsonKey(name: 'Abr')
  final String abr;
  @JsonKey(name: 'tbd')
  final int tbd;
  @JsonKey(name: 'Gd')
  final int gd;
  @JsonKey(name: 'CoNm')
  final String coNm;
  @JsonKey(name: 'CoId')
  final String coId;
  @JsonKey(name: 'HasVideo')
  final bool hasVideo;
  const ScoreResponseDtoStagesEventsT2({
    this.nm = "",
    this.id = "",
    this.img = "",
    this.newsTag = "",
    this.abr = "",
    this.tbd = 0,
    this.gd = 0,
    this.coNm = "",
    this.coId = "",
    this.hasVideo = false,
  });

  factory ScoreResponseDtoStagesEventsT2.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseDtoStagesEventsT2FromJson(json);

  Map<String, dynamic> toJson() => _$ScoreResponseDtoStagesEventsT2ToJson(this);

  ScoreResponseDtoStagesEventsT2 copyWith({
    String? nm,
    String? id,
    String? img,
    String? newsTag,
    String? abr,
    int? tbd,
    int? gd,
    String? coNm,
    String? coId,
    bool? hasVideo,
  }) {
    return ScoreResponseDtoStagesEventsT2(
      nm: nm ?? this.nm,
      id: id ?? this.id,
      img: img ?? this.img,
      newsTag: newsTag ?? this.newsTag,
      abr: abr ?? this.abr,
      tbd: tbd ?? this.tbd,
      gd: gd ?? this.gd,
      coNm: coNm ?? this.coNm,
      coId: coId ?? this.coId,
      hasVideo: hasVideo ?? this.hasVideo,
    );
  }
}

@JsonSerializable()
class ScoreResponseDtoStagesEventsStg {
  @JsonKey(name: 'Sid')
  final String sid;
  @JsonKey(name: 'Snm')
  final String snm;
  @JsonKey(name: 'Scd')
  final String scd;
  @JsonKey(name: 'Cid')
  final String cid;
  @JsonKey(name: 'Cnm')
  final String cnm;
  @JsonKey(name: 'Csnm')
  final String csnm;
  @JsonKey(name: 'Ccd')
  final String ccd;
  @JsonKey(name: 'CompId')
  final String compId;
  @JsonKey(name: 'CompN')
  final String compN;
  @JsonKey(name: 'CompD')
  final String compD;
  @JsonKey(name: 'Scu')
  final int scu;
  @JsonKey(name: 'Chi')
  final int chi;
  @JsonKey(name: 'Shi')
  final int shi;
  @JsonKey(name: 'Ccdiso')
  final String ccdiso;
  @JsonKey(name: 'Sdn')
  final String sdn;
  const ScoreResponseDtoStagesEventsStg({
    this.sid = "",
    this.snm = "",
    this.scd = "",
    this.cid = "",
    this.cnm = "",
    this.csnm = "",
    this.ccd = "",
    this.compId = "",
    this.compN = "",
    this.compD = "",
    this.scu = 0,
    this.chi = 0,
    this.shi = 0,
    this.ccdiso = "",
    this.sdn = "",
  });

  factory ScoreResponseDtoStagesEventsStg.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseDtoStagesEventsStgFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ScoreResponseDtoStagesEventsStgToJson(this);

  ScoreResponseDtoStagesEventsStg copyWith({
    String? sid,
    String? snm,
    String? scd,
    String? cid,
    String? cnm,
    String? csnm,
    String? ccd,
    String? compId,
    String? compN,
    String? compD,
    int? scu,
    int? chi,
    int? shi,
    String? ccdiso,
    String? sdn,
  }) {
    return ScoreResponseDtoStagesEventsStg(
      sid: sid ?? this.sid,
      snm: snm ?? this.snm,
      scd: scd ?? this.scd,
      cid: cid ?? this.cid,
      cnm: cnm ?? this.cnm,
      csnm: csnm ?? this.csnm,
      ccd: ccd ?? this.ccd,
      compId: compId ?? this.compId,
      compN: compN ?? this.compN,
      compD: compD ?? this.compD,
      scu: scu ?? this.scu,
      chi: chi ?? this.chi,
      shi: shi ?? this.shi,
      ccdiso: ccdiso ?? this.ccdiso,
      sdn: sdn ?? this.sdn,
    );
  }
}
