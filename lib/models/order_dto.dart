import 'package:json_annotation/json_annotation.dart';

part 'order_dto.g.dart';

@JsonSerializable()
class OrderDto {
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'data')
  final OrderDtoData data;
  const OrderDto({
    this.status = "",
    this.data = const OrderDtoData(),
  });

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoToJson(this);

  OrderDto copyWith({
    String? status,
    OrderDtoData? data,
  }) {
    return OrderDto(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class OrderDtoData {
  @JsonKey(name: 'items')
  final List<OrderDtoDataItems> items;
  @JsonKey(name: 'pagination')
  final OrderDtoDataPagination pagination;
  const OrderDtoData({
    this.items = const [],
    this.pagination = const OrderDtoDataPagination(),
  });

  factory OrderDtoData.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoDataToJson(this);

  OrderDtoData copyWith({
    List<OrderDtoDataItems>? items,
    OrderDtoDataPagination? pagination,
  }) {
    return OrderDtoData(
      items: items ?? this.items,
      pagination: pagination ?? this.pagination,
    );
  }
}

@JsonSerializable()
class OrderDtoDataItems {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'externalId')
  final int externalId;
  @JsonKey(name: 'shortExternalId')
  final String shortExternalId;
  @JsonKey(name: 'groupId')
  final int groupId;
  @JsonKey(name: 'statusExternalId')
  final int statusExternalId;
  @JsonKey(name: 'processingStatusExternalId')
  final int processingStatusExternalId;
  @JsonKey(name: 'storeExternalId')
  final int storeExternalId;
  @JsonKey(name: 'retailPointExternalId')
  final int retailPointExternalId;
  @JsonKey(name: 'storeType')
  final String storeType;
  @JsonKey(name: 'orderedAt')
  final String orderedAt;
  @JsonKey(name: 'reserveTime')
  final String reserveTime;
  @JsonKey(name: 'dateOfDelivery')
  final String dateOfDelivery;
  @JsonKey(name: 'isPaymentOnline')
  final bool isPaymentOnline;
  @JsonKey(name: 'paymentCode')
  final int paymentCode;
  @JsonKey(name: 'items')
  final List<OrderDtoDataItemsItems> items;
  @JsonKey(name: 'status')
  final OrderDtoDataItemsStatus status;
  @JsonKey(name: 'actions')
  final List<OrderDtoDataItemsActions> actions;
  const OrderDtoDataItems({
    this.id = 0,
    this.externalId = 0,
    this.shortExternalId = "",
    this.groupId = 0,
    this.statusExternalId = 0,
    this.processingStatusExternalId = 0,
    this.storeExternalId = 0,
    this.retailPointExternalId = 0,
    this.storeType = "",
    this.orderedAt = "",
    this.reserveTime = "",
    this.dateOfDelivery = "",
    this.isPaymentOnline = false,
    this.paymentCode = 0,
    this.items = const [],
    this.status = const OrderDtoDataItemsStatus(),
    this.actions = const [],
  });

  factory OrderDtoDataItems.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoDataItemsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoDataItemsToJson(this);

  OrderDtoDataItems copyWith({
    int? id,
    int? externalId,
    String? shortExternalId,
    int? groupId,
    int? statusExternalId,
    int? processingStatusExternalId,
    int? storeExternalId,
    int? retailPointExternalId,
    String? storeType,
    String? orderedAt,
    String? reserveTime,
    String? dateOfDelivery,
    bool? isPaymentOnline,
    int? paymentCode,
    List<OrderDtoDataItemsItems>? items,
    OrderDtoDataItemsStatus? status,
    List<OrderDtoDataItemsActions>? actions,
  }) {
    return OrderDtoDataItems(
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
      shortExternalId: shortExternalId ?? this.shortExternalId,
      groupId: groupId ?? this.groupId,
      statusExternalId: statusExternalId ?? this.statusExternalId,
      processingStatusExternalId:
          processingStatusExternalId ?? this.processingStatusExternalId,
      storeExternalId: storeExternalId ?? this.storeExternalId,
      retailPointExternalId:
          retailPointExternalId ?? this.retailPointExternalId,
      storeType: storeType ?? this.storeType,
      orderedAt: orderedAt ?? this.orderedAt,
      reserveTime: reserveTime ?? this.reserveTime,
      dateOfDelivery: dateOfDelivery ?? this.dateOfDelivery,
      isPaymentOnline: isPaymentOnline ?? this.isPaymentOnline,
      paymentCode: paymentCode ?? this.paymentCode,
      items: items ?? this.items,
      status: status ?? this.status,
      actions: actions ?? this.actions,
    );
  }
}

@JsonSerializable()
class OrderDtoDataItemsItems {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'externalId')
  final int externalId;
  @JsonKey(name: 'originalPrice')
  final int originalPrice;
  @JsonKey(name: 'price')
  final int price;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'reserveCount')
  final int reserveCount;
  const OrderDtoDataItemsItems({
    this.id = 0,
    this.externalId = 0,
    this.originalPrice = 0,
    this.price = 0,
    this.count = 0,
    this.reserveCount = 0,
  });

  factory OrderDtoDataItemsItems.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoDataItemsItemsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoDataItemsItemsToJson(this);

  OrderDtoDataItemsItems copyWith({
    int? id,
    int? externalId,
    int? originalPrice,
    int? price,
    int? count,
    int? reserveCount,
  }) {
    return OrderDtoDataItemsItems(
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
      originalPrice: originalPrice ?? this.originalPrice,
      price: price ?? this.price,
      count: count ?? this.count,
      reserveCount: reserveCount ?? this.reserveCount,
    );
  }
}

@JsonSerializable()
class OrderDtoDataItemsStatus {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'externalId')
  final int externalId;
  @JsonKey(name: 'description')
  final String description;
  const OrderDtoDataItemsStatus({
    this.id = 0,
    this.name = "",
    this.externalId = 0,
    this.description = "",
  });

  factory OrderDtoDataItemsStatus.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoDataItemsStatusFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoDataItemsStatusToJson(this);

  OrderDtoDataItemsStatus copyWith({
    int? id,
    String? name,
    int? externalId,
    String? description,
  }) {
    return OrderDtoDataItemsStatus(
      id: id ?? this.id,
      name: name ?? this.name,
      externalId: externalId ?? this.externalId,
      description: description ?? this.description,
    );
  }
}

@JsonSerializable()
class OrderDtoDataItemsActions {
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'name')
  final String name;
  const OrderDtoDataItemsActions({
    this.code = "",
    this.name = "",
  });

  factory OrderDtoDataItemsActions.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoDataItemsActionsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoDataItemsActionsToJson(this);

  OrderDtoDataItemsActions copyWith({
    String? code,
    String? name,
  }) {
    return OrderDtoDataItemsActions(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }
}

@JsonSerializable()
class OrderDtoDataPagination {
  @JsonKey(name: 'perPage')
  final int perPage;
  @JsonKey(name: 'currentPage')
  final int currentPage;
  @JsonKey(name: 'lastPage')
  final int lastPage;
  @JsonKey(name: 'total')
  final int total;
  const OrderDtoDataPagination({
    this.perPage = 0,
    this.currentPage = 0,
    this.lastPage = 0,
    this.total = 0,
  });

  factory OrderDtoDataPagination.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoDataPaginationFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoDataPaginationToJson(this);

  OrderDtoDataPagination copyWith({
    int? perPage,
    int? currentPage,
    int? lastPage,
    int? total,
  }) {
    return OrderDtoDataPagination(
      perPage: perPage ?? this.perPage,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      total: total ?? this.total,
    );
  }
}
