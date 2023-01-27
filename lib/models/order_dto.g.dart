// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => OrderDto(
      status: json['status'] as String? ?? "",
      data: json['data'] == null
          ? const OrderDtoData()
          : OrderDtoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDtoToJson(OrderDto instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

OrderDtoData _$OrderDtoDataFromJson(Map<String, dynamic> json) => OrderDtoData(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => OrderDtoDataItems.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? const OrderDtoDataPagination()
          : OrderDtoDataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDtoDataToJson(OrderDtoData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
    };

OrderDtoDataItems _$OrderDtoDataItemsFromJson(Map<String, dynamic> json) =>
    OrderDtoDataItems(
      id: json['id'] as int? ?? 0,
      externalId: json['externalId'] as int? ?? 0,
      shortExternalId: json['shortExternalId'] as String? ?? "",
      groupId: json['groupId'] as int? ?? 0,
      statusExternalId: json['statusExternalId'] as int? ?? 0,
      processingStatusExternalId:
          json['processingStatusExternalId'] as int? ?? 0,
      storeExternalId: json['storeExternalId'] as int? ?? 0,
      retailPointExternalId: json['retailPointExternalId'] as int? ?? 0,
      storeType: json['storeType'] as String? ?? "",
      orderedAt: json['orderedAt'] as String? ?? "",
      reserveTime: json['reserveTime'] as String? ?? "",
      dateOfDelivery: json['dateOfDelivery'] as String? ?? "",
      isPaymentOnline: json['isPaymentOnline'] as bool? ?? false,
      paymentCode: json['paymentCode'] as int? ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  OrderDtoDataItemsItems.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] == null
          ? const OrderDtoDataItemsStatus()
          : OrderDtoDataItemsStatus.fromJson(
              json['status'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) =>
                  OrderDtoDataItemsActions.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderDtoDataItemsToJson(OrderDtoDataItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'externalId': instance.externalId,
      'shortExternalId': instance.shortExternalId,
      'groupId': instance.groupId,
      'statusExternalId': instance.statusExternalId,
      'processingStatusExternalId': instance.processingStatusExternalId,
      'storeExternalId': instance.storeExternalId,
      'retailPointExternalId': instance.retailPointExternalId,
      'storeType': instance.storeType,
      'orderedAt': instance.orderedAt,
      'reserveTime': instance.reserveTime,
      'dateOfDelivery': instance.dateOfDelivery,
      'isPaymentOnline': instance.isPaymentOnline,
      'paymentCode': instance.paymentCode,
      'items': instance.items,
      'status': instance.status,
      'actions': instance.actions,
    };

OrderDtoDataItemsItems _$OrderDtoDataItemsItemsFromJson(
        Map<String, dynamic> json) =>
    OrderDtoDataItemsItems(
      id: json['id'] as int? ?? 0,
      externalId: json['externalId'] as int? ?? 0,
      originalPrice: json['originalPrice'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      count: json['count'] as int? ?? 0,
      reserveCount: json['reserveCount'] as int? ?? 0,
    );

Map<String, dynamic> _$OrderDtoDataItemsItemsToJson(
        OrderDtoDataItemsItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'externalId': instance.externalId,
      'originalPrice': instance.originalPrice,
      'price': instance.price,
      'count': instance.count,
      'reserveCount': instance.reserveCount,
    };

OrderDtoDataItemsStatus _$OrderDtoDataItemsStatusFromJson(
        Map<String, dynamic> json) =>
    OrderDtoDataItemsStatus(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      externalId: json['externalId'] as int? ?? 0,
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$OrderDtoDataItemsStatusToJson(
        OrderDtoDataItemsStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalId': instance.externalId,
      'description': instance.description,
    };

OrderDtoDataItemsActions _$OrderDtoDataItemsActionsFromJson(
        Map<String, dynamic> json) =>
    OrderDtoDataItemsActions(
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$OrderDtoDataItemsActionsToJson(
        OrderDtoDataItemsActions instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

OrderDtoDataPagination _$OrderDtoDataPaginationFromJson(
        Map<String, dynamic> json) =>
    OrderDtoDataPagination(
      perPage: json['perPage'] as int? ?? 0,
      currentPage: json['currentPage'] as int? ?? 0,
      lastPage: json['lastPage'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$OrderDtoDataPaginationToJson(
        OrderDtoDataPagination instance) =>
    <String, dynamic>{
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'total': instance.total,
    };
