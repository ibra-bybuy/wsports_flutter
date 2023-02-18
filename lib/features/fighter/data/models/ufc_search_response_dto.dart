import 'package:json_annotation/json_annotation.dart';

part 'ufc_search_response_dto.g.dart';

@JsonSerializable()
class UfcSearchResponseDto {
  @JsonKey(name: 'meta')
  final UfcSearchResponseDtoMeta meta;
  @JsonKey(name: 'response')
  final UfcSearchResponseDtoResponse response;
  const UfcSearchResponseDto({
    this.meta = const UfcSearchResponseDtoMeta(),
    this.response = const UfcSearchResponseDtoResponse(),
  });

  factory UfcSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UfcSearchResponseDtoToJson(this);

  UfcSearchResponseDto copyWith({
    UfcSearchResponseDtoMeta? meta,
    UfcSearchResponseDtoResponse? response,
  }) {
    return UfcSearchResponseDto(
      meta: meta ?? this.meta,
      response: response ?? this.response,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoMeta {
  @JsonKey(name: 'uuid')
  final String uuid;
  const UfcSearchResponseDtoMeta({
    this.uuid = "",
  });

  factory UfcSearchResponseDtoMeta.fromJson(Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoMetaFromJson(json);

  Map<String, dynamic> toJson() => _$UfcSearchResponseDtoMetaToJson(this);

  UfcSearchResponseDtoMeta copyWith({
    String? uuid,
  }) {
    return UfcSearchResponseDtoMeta(
      uuid: uuid ?? this.uuid,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponse {
  @JsonKey(name: 'businessId')
  final int businessId;
  @JsonKey(name: 'modules')
  final List<UfcSearchResponseDtoResponseModules> modules;
  @JsonKey(name: 'queryId')
  final String queryId;
  @JsonKey(name: 'locationBias')
  final UfcSearchResponseDtoResponseLocationBias locationBias;
  const UfcSearchResponseDtoResponse({
    this.businessId = 0,
    this.modules = const [],
    this.queryId = "",
    this.locationBias = const UfcSearchResponseDtoResponseLocationBias(),
  });

  factory UfcSearchResponseDtoResponse.fromJson(Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UfcSearchResponseDtoResponseToJson(this);

  UfcSearchResponseDtoResponse copyWith({
    int? businessId,
    List<UfcSearchResponseDtoResponseModules>? modules,
    String? queryId,
    UfcSearchResponseDtoResponseLocationBias? locationBias,
  }) {
    return UfcSearchResponseDtoResponse(
      businessId: businessId ?? this.businessId,
      modules: modules ?? this.modules,
      queryId: queryId ?? this.queryId,
      locationBias: locationBias ?? this.locationBias,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseModules {
  @JsonKey(name: 'verticalConfigId')
  final String verticalConfigId;
  @JsonKey(name: 'resultsCount')
  final int resultsCount;
  @JsonKey(name: 'encodedState')
  final String encodedState;
  @JsonKey(name: 'results')
  final List<UfcSearchResponseDtoResponseModulesResults> results;
  @JsonKey(name: 'queryDurationMillis')
  final int queryDurationMillis;
  @JsonKey(name: 'source')
  final String source;
  const UfcSearchResponseDtoResponseModules({
    this.verticalConfigId = "",
    this.resultsCount = 0,
    this.encodedState = "",
    this.results = const [],
    this.queryDurationMillis = 0,
    this.source = "",
  });

  factory UfcSearchResponseDtoResponseModules.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseModulesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseModulesToJson(this);

  UfcSearchResponseDtoResponseModules copyWith({
    String? verticalConfigId,
    int? resultsCount,
    String? encodedState,
    List<UfcSearchResponseDtoResponseModulesResults>? results,
    int? queryDurationMillis,
    String? source,
  }) {
    return UfcSearchResponseDtoResponseModules(
      verticalConfigId: verticalConfigId ?? this.verticalConfigId,
      resultsCount: resultsCount ?? this.resultsCount,
      encodedState: encodedState ?? this.encodedState,
      results: results ?? this.results,
      queryDurationMillis: queryDurationMillis ?? this.queryDurationMillis,
      source: source ?? this.source,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseModulesResults {
  @JsonKey(name: 'data')
  final UfcSearchResponseDtoResponseModulesResultsData data;
  const UfcSearchResponseDtoResponseModulesResults({
    this.data = const UfcSearchResponseDtoResponseModulesResultsData(),
  });

  factory UfcSearchResponseDtoResponseModulesResults.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseModulesResultsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseModulesResultsToJson(this);

  UfcSearchResponseDtoResponseModulesResults copyWith({
    UfcSearchResponseDtoResponseModulesResultsData? data,
  }) {
    return UfcSearchResponseDtoResponseModulesResults(
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseModulesResultsData {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'c_activeInAnswers')
  final bool cActiveInAnswers;
  @JsonKey(name: 'c_age')
  final String cAge;
  @JsonKey(name: 'c_dOB')
  final String cDOb;
  @JsonKey(name: 'c_fightingOutOfCity')
  final String cFightingOutOfCity;
  @JsonKey(name: 'c_fightingOutOfCountry')
  final String cFightingOutOfCountry;
  @JsonKey(name: 'c_fightingOutOfState')
  final String cFightingOutOfState;
  @JsonKey(name: 'c_fightingOutOfTriCode')
  final String cFightingOutOfTriCode;
  @JsonKey(name: 'c_height')
  final String cHeight;
  @JsonKey(name: 'c_homeCity')
  final String cHomeCity;
  @JsonKey(name: 'c_homeCountry')
  final String cHomeCountry;
  @JsonKey(name: 'c_homeState')
  final List<String> cHomeState;
  @JsonKey(name: 'c_homeTriCode')
  final String cHomeTriCode;
  @JsonKey(name: 'c_linkedFights')
  final List<UfcSearchResponseDtoResponseModulesResultsDataClinkedFights>
      cLinkedFights;
  @JsonKey(name: 'c_nickname')
  final String cNickname;
  @JsonKey(name: 'c_photo')
  final UfcSearchResponseDtoResponseModulesResultsDataCphoto cPhoto;
  @JsonKey(name: 'c_reach')
  final String cReach;
  @JsonKey(name: 'c_recordDraws')
  final String cRecordDraws;
  @JsonKey(name: 'c_recordLosses')
  final String cRecordLosses;
  @JsonKey(name: 'c_recordNoContests')
  final String cRecordNoContests;
  @JsonKey(name: 'c_recordWins')
  final String cRecordWins;
  @JsonKey(name: 'c_stance')
  final String cStance;
  @JsonKey(name: 'c_uFCLink')
  final String cUFcLink;
  @JsonKey(name: 'c_weight')
  final String cWeight;
  @JsonKey(name: 'c_weightClass')
  final String cWeightClass;
  @JsonKey(name: 'c_weightClassAbbreviation')
  final String cWeightClassAbbreviation;
  @JsonKey(name: 'c_weightClassId')
  final String cWeightClassId;
  @JsonKey(name: 'c_weightClassOrder')
  final String cWeightClassOrder;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'uid')
  final String uid;
  const UfcSearchResponseDtoResponseModulesResultsData({
    this.id = "",
    this.type = "",
    this.name = "",
    this.cActiveInAnswers = false,
    this.cAge = "",
    this.cDOb = "",
    this.cFightingOutOfCity = "",
    this.cFightingOutOfCountry = "",
    this.cFightingOutOfState = "",
    this.cFightingOutOfTriCode = "",
    this.cHeight = "",
    this.cHomeCity = "",
    this.cHomeCountry = "",
    this.cHomeState = const [],
    this.cHomeTriCode = "",
    this.cLinkedFights = const [],
    this.cNickname = "",
    this.cPhoto = const UfcSearchResponseDtoResponseModulesResultsDataCphoto(),
    this.cReach = "",
    this.cRecordDraws = "",
    this.cRecordLosses = "",
    this.cRecordNoContests = "",
    this.cRecordWins = "",
    this.cStance = "",
    this.cUFcLink = "",
    this.cWeight = "",
    this.cWeightClass = "",
    this.cWeightClassAbbreviation = "",
    this.cWeightClassId = "",
    this.cWeightClassOrder = "",
    this.firstName = "",
    this.gender = "",
    this.lastName = "",
    this.uid = "",
  });

  factory UfcSearchResponseDtoResponseModulesResultsData.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseModulesResultsDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseModulesResultsDataToJson(this);

  UfcSearchResponseDtoResponseModulesResultsData copyWith({
    String? id,
    String? type,
    String? name,
    bool? cActiveInAnswers,
    String? cAge,
    String? cDOb,
    String? cFightingOutOfCity,
    String? cFightingOutOfCountry,
    String? cFightingOutOfState,
    String? cFightingOutOfTriCode,
    String? cHeight,
    String? cHomeCity,
    String? cHomeCountry,
    List<String>? cHomeState,
    String? cHomeTriCode,
    List<UfcSearchResponseDtoResponseModulesResultsDataClinkedFights>?
        cLinkedFights,
    String? cNickname,
    UfcSearchResponseDtoResponseModulesResultsDataCphoto? cPhoto,
    String? cReach,
    String? cRecordDraws,
    String? cRecordLosses,
    String? cRecordNoContests,
    String? cRecordWins,
    String? cStance,
    String? cUFcLink,
    String? cWeight,
    String? cWeightClass,
    String? cWeightClassAbbreviation,
    String? cWeightClassId,
    String? cWeightClassOrder,
    String? firstName,
    String? gender,
    String? lastName,
    String? uid,
  }) {
    return UfcSearchResponseDtoResponseModulesResultsData(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      cActiveInAnswers: cActiveInAnswers ?? this.cActiveInAnswers,
      cAge: cAge ?? this.cAge,
      cDOb: cDOb ?? this.cDOb,
      cFightingOutOfCity: cFightingOutOfCity ?? this.cFightingOutOfCity,
      cFightingOutOfCountry:
          cFightingOutOfCountry ?? this.cFightingOutOfCountry,
      cFightingOutOfState: cFightingOutOfState ?? this.cFightingOutOfState,
      cFightingOutOfTriCode:
          cFightingOutOfTriCode ?? this.cFightingOutOfTriCode,
      cHeight: cHeight ?? this.cHeight,
      cHomeCity: cHomeCity ?? this.cHomeCity,
      cHomeCountry: cHomeCountry ?? this.cHomeCountry,
      cHomeState: cHomeState ?? this.cHomeState,
      cHomeTriCode: cHomeTriCode ?? this.cHomeTriCode,
      cLinkedFights: cLinkedFights ?? this.cLinkedFights,
      cNickname: cNickname ?? this.cNickname,
      cPhoto: cPhoto ?? this.cPhoto,
      cReach: cReach ?? this.cReach,
      cRecordDraws: cRecordDraws ?? this.cRecordDraws,
      cRecordLosses: cRecordLosses ?? this.cRecordLosses,
      cRecordNoContests: cRecordNoContests ?? this.cRecordNoContests,
      cRecordWins: cRecordWins ?? this.cRecordWins,
      cStance: cStance ?? this.cStance,
      cUFcLink: cUFcLink ?? this.cUFcLink,
      cWeight: cWeight ?? this.cWeight,
      cWeightClass: cWeightClass ?? this.cWeightClass,
      cWeightClassAbbreviation:
          cWeightClassAbbreviation ?? this.cWeightClassAbbreviation,
      cWeightClassId: cWeightClassId ?? this.cWeightClassId,
      cWeightClassOrder: cWeightClassOrder ?? this.cWeightClassOrder,
      firstName: firstName ?? this.firstName,
      gender: gender ?? this.gender,
      lastName: lastName ?? this.lastName,
      uid: uid ?? this.uid,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseModulesResultsDataClinkedFights {
  @JsonKey(name: 'entityId')
  final String entityId;
  @JsonKey(name: 'name')
  final String name;
  const UfcSearchResponseDtoResponseModulesResultsDataClinkedFights({
    this.entityId = "",
    this.name = "",
  });

  factory UfcSearchResponseDtoResponseModulesResultsDataClinkedFights.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseModulesResultsDataClinkedFightsFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseModulesResultsDataClinkedFightsToJson(this);

  UfcSearchResponseDtoResponseModulesResultsDataClinkedFights copyWith({
    String? entityId,
    String? name,
  }) {
    return UfcSearchResponseDtoResponseModulesResultsDataClinkedFights(
      entityId: entityId ?? this.entityId,
      name: name ?? this.name,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseModulesResultsDataCphoto {
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'sourceUrl')
  final String sourceUrl;
  @JsonKey(name: 'thumbnails')
  final List<UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails>
      thumbnails;
  const UfcSearchResponseDtoResponseModulesResultsDataCphoto({
    this.url = "",
    this.width = 0,
    this.height = 0,
    this.sourceUrl = "",
    this.thumbnails = const [],
  });

  factory UfcSearchResponseDtoResponseModulesResultsDataCphoto.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseModulesResultsDataCphotoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseModulesResultsDataCphotoToJson(this);

  UfcSearchResponseDtoResponseModulesResultsDataCphoto copyWith({
    String? url,
    int? width,
    int? height,
    String? sourceUrl,
    List<UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails>?
        thumbnails,
  }) {
    return UfcSearchResponseDtoResponseModulesResultsDataCphoto(
      url: url ?? this.url,
      width: width ?? this.width,
      height: height ?? this.height,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      thumbnails: thumbnails ?? this.thumbnails,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails {
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  const UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails({
    this.url = "",
    this.width = 0,
    this.height = 0,
  });

  factory UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnailsFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnailsToJson(
          this);

  UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails copyWith({
    String? url,
    int? width,
    int? height,
  }) {
    return UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails(
      url: url ?? this.url,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}

@JsonSerializable()
class UfcSearchResponseDtoResponseLocationBias {
  @JsonKey(name: 'latitude')
  final num latitude;
  @JsonKey(name: 'longitude')
  final num longitude;
  @JsonKey(name: 'locationDisplayName')
  final String locationDisplayName;
  @JsonKey(name: 'accuracy')
  final String accuracy;
  const UfcSearchResponseDtoResponseLocationBias({
    this.latitude = 0.0,
    this.longitude = 0.0,
    this.locationDisplayName = "",
    this.accuracy = "",
  });

  factory UfcSearchResponseDtoResponseLocationBias.fromJson(
          Map<String, dynamic> json) =>
      _$UfcSearchResponseDtoResponseLocationBiasFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UfcSearchResponseDtoResponseLocationBiasToJson(this);

  UfcSearchResponseDtoResponseLocationBias copyWith({
    num? latitude,
    num? longitude,
    String? locationDisplayName,
    String? accuracy,
  }) {
    return UfcSearchResponseDtoResponseLocationBias(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      locationDisplayName: locationDisplayName ?? this.locationDisplayName,
      accuracy: accuracy ?? this.accuracy,
    );
  }
}
