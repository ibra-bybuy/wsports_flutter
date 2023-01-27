import 'package:equatable/equatable.dart';

class OrderEntities extends Equatable {
  final String status;
  final OrderEntitiesData data;
  const OrderEntities({
    this.status = "",
    this.data = const OrderEntitiesData(),
  });

  OrderEntities copyWith({
    String? status,
    OrderEntitiesData? data,
  }) {
    return OrderEntities(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, data];
}

class OrderEntitiesData extends Equatable {
  final List<OrderEntitiesDataItems> items;
  final OrderEntitiesDataPagination pagination;
  const OrderEntitiesData({
    this.items = const [],
    this.pagination = const OrderEntitiesDataPagination(),
  });

  OrderEntitiesData copyWith({
    List<OrderEntitiesDataItems>? items,
    OrderEntitiesDataPagination? pagination,
  }) {
    return OrderEntitiesData(
      items: items ?? this.items,
      pagination: pagination ?? this.pagination,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items, pagination];
}

class OrderEntitiesDataItems extends Equatable {
  final int id;
  final int externalId;
  final String shortExternalId;
  final int groupId;
  final int statusExternalId;
  final int processingStatusExternalId;
  final int storeExternalId;
  final int retailPointExternalId;
  final String storeType;
  final String orderedAt;
  final String reserveTime;
  final String dateOfDelivery;
  final bool isPaymentOnline;
  final int paymentCode;
  final List<OrderEntitiesDataItemsItems> items;
  final OrderEntitiesDataItemsStatus status;
  final List<OrderEntitiesDataItemsActions> actions;
  const OrderEntitiesDataItems({
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
    this.status = const OrderEntitiesDataItemsStatus(),
    this.actions = const [],
  });

  OrderEntitiesDataItems copyWith({
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
    List<OrderEntitiesDataItemsItems>? items,
    OrderEntitiesDataItemsStatus? status,
    List<OrderEntitiesDataItemsActions>? actions,
  }) {
    return OrderEntitiesDataItems(
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

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        externalId,
        shortExternalId,
        groupId,
        statusExternalId,
        processingStatusExternalId,
        storeExternalId,
        retailPointExternalId,
        storeType,
        orderedAt,
        reserveTime,
        dateOfDelivery,
        isPaymentOnline,
        paymentCode,
        items,
        status,
        actions
      ];
}

class OrderEntitiesDataItemsItems extends Equatable {
  final int id;
  final int externalId;
  final int originalPrice;
  final int price;
  final int count;
  final int reserveCount;
  const OrderEntitiesDataItemsItems({
    this.id = 0,
    this.externalId = 0,
    this.originalPrice = 0,
    this.price = 0,
    this.count = 0,
    this.reserveCount = 0,
  });

  OrderEntitiesDataItemsItems copyWith({
    int? id,
    int? externalId,
    int? originalPrice,
    int? price,
    int? count,
    int? reserveCount,
  }) {
    return OrderEntitiesDataItemsItems(
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
      originalPrice: originalPrice ?? this.originalPrice,
      price: price ?? this.price,
      count: count ?? this.count,
      reserveCount: reserveCount ?? this.reserveCount,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props =>
      [id, externalId, originalPrice, price, count, reserveCount];
}

class OrderEntitiesDataItemsStatus extends Equatable {
  final int id;
  final String name;
  final int externalId;
  final String description;
  const OrderEntitiesDataItemsStatus({
    this.id = 0,
    this.name = "",
    this.externalId = 0,
    this.description = "",
  });

  OrderEntitiesDataItemsStatus copyWith({
    int? id,
    String? name,
    int? externalId,
    String? description,
  }) {
    return OrderEntitiesDataItemsStatus(
      id: id ?? this.id,
      name: name ?? this.name,
      externalId: externalId ?? this.externalId,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, externalId, description];
}

class OrderEntitiesDataItemsActions extends Equatable {
  final String code;
  final String name;
  const OrderEntitiesDataItemsActions({
    this.code = "",
    this.name = "",
  });

  OrderEntitiesDataItemsActions copyWith({
    String? code,
    String? name,
  }) {
    return OrderEntitiesDataItemsActions(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [code, name];
}

class OrderEntitiesDataPagination extends Equatable {
  final int perPage;
  final int currentPage;
  final int lastPage;
  final int total;
  const OrderEntitiesDataPagination({
    this.perPage = 0,
    this.currentPage = 0,
    this.lastPage = 0,
    this.total = 0,
  });

  OrderEntitiesDataPagination copyWith({
    int? perPage,
    int? currentPage,
    int? lastPage,
    int? total,
  }) {
    return OrderEntitiesDataPagination(
      perPage: perPage ?? this.perPage,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      total: total ?? this.total,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [perPage, currentPage, lastPage, total];
}
