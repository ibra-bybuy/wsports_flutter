// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ufc_search_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UfcSearchResponseDto _$UfcSearchResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UfcSearchResponseDto(
      meta: json['meta'] == null
          ? const UfcSearchResponseDtoMeta()
          : UfcSearchResponseDtoMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
      response: json['response'] == null
          ? const UfcSearchResponseDtoResponse()
          : UfcSearchResponseDtoResponse.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UfcSearchResponseDtoToJson(
        UfcSearchResponseDto instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'response': instance.response,
    };

UfcSearchResponseDtoMeta _$UfcSearchResponseDtoMetaFromJson(
        Map<String, dynamic> json) =>
    UfcSearchResponseDtoMeta(
      uuid: json['uuid'] as String? ?? "",
    );

Map<String, dynamic> _$UfcSearchResponseDtoMetaToJson(
        UfcSearchResponseDtoMeta instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
    };

UfcSearchResponseDtoResponse _$UfcSearchResponseDtoResponseFromJson(
        Map<String, dynamic> json) =>
    UfcSearchResponseDtoResponse(
      businessId: json['businessId'] as int? ?? 0,
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => UfcSearchResponseDtoResponseModules.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      queryId: json['queryId'] as String? ?? "",
      locationBias: json['locationBias'] == null
          ? const UfcSearchResponseDtoResponseLocationBias()
          : UfcSearchResponseDtoResponseLocationBias.fromJson(
              json['locationBias'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UfcSearchResponseDtoResponseToJson(
        UfcSearchResponseDtoResponse instance) =>
    <String, dynamic>{
      'businessId': instance.businessId,
      'modules': instance.modules,
      'queryId': instance.queryId,
      'locationBias': instance.locationBias,
    };

UfcSearchResponseDtoResponseModules
    _$UfcSearchResponseDtoResponseModulesFromJson(Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseModules(
          verticalConfigId: json['verticalConfigId'] as String? ?? "",
          resultsCount: json['resultsCount'] as int? ?? 0,
          encodedState: json['encodedState'] as String? ?? "",
          results: (json['results'] as List<dynamic>?)
                  ?.map((e) =>
                      UfcSearchResponseDtoResponseModulesResults.fromJson(
                          e as Map<String, dynamic>))
                  .toList() ??
              const [],
          queryDurationMillis: json['queryDurationMillis'] as int? ?? 0,
          source: json['source'] as String? ?? "",
        );

Map<String, dynamic> _$UfcSearchResponseDtoResponseModulesToJson(
        UfcSearchResponseDtoResponseModules instance) =>
    <String, dynamic>{
      'verticalConfigId': instance.verticalConfigId,
      'resultsCount': instance.resultsCount,
      'encodedState': instance.encodedState,
      'results': instance.results,
      'queryDurationMillis': instance.queryDurationMillis,
      'source': instance.source,
    };

UfcSearchResponseDtoResponseModulesResults
    _$UfcSearchResponseDtoResponseModulesResultsFromJson(
            Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseModulesResults(
          data: json['data'] == null
              ? const UfcSearchResponseDtoResponseModulesResultsData()
              : UfcSearchResponseDtoResponseModulesResultsData.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UfcSearchResponseDtoResponseModulesResultsToJson(
        UfcSearchResponseDtoResponseModulesResults instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UfcSearchResponseDtoResponseModulesResultsData
    _$UfcSearchResponseDtoResponseModulesResultsDataFromJson(
            Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseModulesResultsData(
          id: json['id'] as String? ?? "",
          type: json['type'] as String? ?? "",
          name: json['name'] as String? ?? "",
          cActiveInAnswers: json['c_activeInAnswers'] as bool? ?? false,
          cAge: json['c_age'] as String? ?? "",
          cDOb: json['c_dOB'] as String? ?? "",
          cFightingOutOfCity: json['c_fightingOutOfCity'] as String? ?? "",
          cFightingOutOfCountry:
              json['c_fightingOutOfCountry'] as String? ?? "",
          cFightingOutOfState: json['c_fightingOutOfState'] as String? ?? "",
          cFightingOutOfTriCode:
              json['c_fightingOutOfTriCode'] as String? ?? "",
          cHeight: json['c_height'] as String? ?? "",
          cHomeCity: json['c_homeCity'] as String? ?? "",
          cHomeCountry: json['c_homeCountry'] as String? ?? "",
          cHomeState: (json['c_homeState'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          cHomeTriCode: json['c_homeTriCode'] as String? ?? "",
          cLinkedFights: (json['c_linkedFights'] as List<dynamic>?)
                  ?.map((e) =>
                      UfcSearchResponseDtoResponseModulesResultsDataClinkedFights
                          .fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          cNickname: json['c_nickname'] as String? ?? "",
          cPhoto: json['c_photo'] == null
              ? const UfcSearchResponseDtoResponseModulesResultsDataCphoto()
              : UfcSearchResponseDtoResponseModulesResultsDataCphoto.fromJson(
                  json['c_photo'] as Map<String, dynamic>),
          cReach: json['c_reach'] as String? ?? "",
          cRecordDraws: json['c_recordDraws'] as String? ?? "",
          cRecordLosses: json['c_recordLosses'] as String? ?? "",
          cRecordNoContests: json['c_recordNoContests'] as String? ?? "",
          cRecordWins: json['c_recordWins'] as String? ?? "",
          cStance: json['c_stance'] as String? ?? "",
          cUFcLink: json['c_uFCLink'] as String? ?? "",
          cWeight: json['c_weight'] as String? ?? "",
          cWeightClass: json['c_weightClass'] as String? ?? "",
          cWeightClassAbbreviation:
              json['c_weightClassAbbreviation'] as String? ?? "",
          cWeightClassId: json['c_weightClassId'] as String? ?? "",
          cWeightClassOrder: json['c_weightClassOrder'] as String? ?? "",
          firstName: json['firstName'] as String? ?? "",
          gender: json['gender'] as String? ?? "",
          lastName: json['lastName'] as String? ?? "",
          uid: json['uid'] as String? ?? "",
        );

Map<String, dynamic> _$UfcSearchResponseDtoResponseModulesResultsDataToJson(
        UfcSearchResponseDtoResponseModulesResultsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'c_activeInAnswers': instance.cActiveInAnswers,
      'c_age': instance.cAge,
      'c_dOB': instance.cDOb,
      'c_fightingOutOfCity': instance.cFightingOutOfCity,
      'c_fightingOutOfCountry': instance.cFightingOutOfCountry,
      'c_fightingOutOfState': instance.cFightingOutOfState,
      'c_fightingOutOfTriCode': instance.cFightingOutOfTriCode,
      'c_height': instance.cHeight,
      'c_homeCity': instance.cHomeCity,
      'c_homeCountry': instance.cHomeCountry,
      'c_homeState': instance.cHomeState,
      'c_homeTriCode': instance.cHomeTriCode,
      'c_linkedFights': instance.cLinkedFights,
      'c_nickname': instance.cNickname,
      'c_photo': instance.cPhoto,
      'c_reach': instance.cReach,
      'c_recordDraws': instance.cRecordDraws,
      'c_recordLosses': instance.cRecordLosses,
      'c_recordNoContests': instance.cRecordNoContests,
      'c_recordWins': instance.cRecordWins,
      'c_stance': instance.cStance,
      'c_uFCLink': instance.cUFcLink,
      'c_weight': instance.cWeight,
      'c_weightClass': instance.cWeightClass,
      'c_weightClassAbbreviation': instance.cWeightClassAbbreviation,
      'c_weightClassId': instance.cWeightClassId,
      'c_weightClassOrder': instance.cWeightClassOrder,
      'firstName': instance.firstName,
      'gender': instance.gender,
      'lastName': instance.lastName,
      'uid': instance.uid,
    };

UfcSearchResponseDtoResponseModulesResultsDataClinkedFights
    _$UfcSearchResponseDtoResponseModulesResultsDataClinkedFightsFromJson(
            Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseModulesResultsDataClinkedFights(
          entityId: json['entityId'] as String? ?? "",
          name: json['name'] as String? ?? "",
        );

Map<String, dynamic>
    _$UfcSearchResponseDtoResponseModulesResultsDataClinkedFightsToJson(
            UfcSearchResponseDtoResponseModulesResultsDataClinkedFights
                instance) =>
        <String, dynamic>{
          'entityId': instance.entityId,
          'name': instance.name,
        };

UfcSearchResponseDtoResponseModulesResultsDataCphoto
    _$UfcSearchResponseDtoResponseModulesResultsDataCphotoFromJson(
            Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseModulesResultsDataCphoto(
          url: json['url'] as String? ?? "",
          width: json['width'] as int? ?? 0,
          height: json['height'] as int? ?? 0,
          sourceUrl: json['sourceUrl'] as String? ?? "",
          thumbnails: (json['thumbnails'] as List<dynamic>?)
                  ?.map((e) =>
                      UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails
                          .fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic>
    _$UfcSearchResponseDtoResponseModulesResultsDataCphotoToJson(
            UfcSearchResponseDtoResponseModulesResultsDataCphoto instance) =>
        <String, dynamic>{
          'url': instance.url,
          'width': instance.width,
          'height': instance.height,
          'sourceUrl': instance.sourceUrl,
          'thumbnails': instance.thumbnails,
        };

UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails
    _$UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnailsFromJson(
            Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails(
          url: json['url'] as String? ?? "",
          width: json['width'] as int? ?? 0,
          height: json['height'] as int? ?? 0,
        );

Map<String, dynamic>
    _$UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnailsToJson(
            UfcSearchResponseDtoResponseModulesResultsDataCphotoThumbnails
                instance) =>
        <String, dynamic>{
          'url': instance.url,
          'width': instance.width,
          'height': instance.height,
        };

UfcSearchResponseDtoResponseLocationBias
    _$UfcSearchResponseDtoResponseLocationBiasFromJson(
            Map<String, dynamic> json) =>
        UfcSearchResponseDtoResponseLocationBias(
          latitude: json['latitude'] as num? ?? 0.0,
          longitude: json['longitude'] as num? ?? 0.0,
          locationDisplayName: json['locationDisplayName'] as String? ?? "",
          accuracy: json['accuracy'] as String? ?? "",
        );

Map<String, dynamic> _$UfcSearchResponseDtoResponseLocationBiasToJson(
        UfcSearchResponseDtoResponseLocationBias instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locationDisplayName': instance.locationDisplayName,
      'accuracy': instance.accuracy,
    };
