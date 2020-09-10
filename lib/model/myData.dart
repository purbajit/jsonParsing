import 'dart:convert';

MyData myDataFromJson(String str) => MyData.fromJson(json.decode(str));

String myDataToJson(MyData data) => json.encode(data.toJson());

class MyData {
  MyData({
    this.columns,
    this.data,
    this.drugList,
    this.drugListStockEntry,
    this.loggedIn,
    this.programList,
    this.session,
    this.stockList,
  });

  List<dynamic> columns;
  List<dynamic> data;
  List<DrugList> drugList;
  dynamic drugListStockEntry;
  dynamic loggedIn;
  Map<String, String> programList;
  dynamic session;
  String stockList;

  factory MyData.fromJson(Map<String, dynamic> json) => MyData(
        columns: List<dynamic>.from(json["columns"].map((x) => x)),
        data: List<dynamic>.from(json["data"].map((x) => x)),
        drugList: List<DrugList>.from(
            json["drugList"].map((x) => DrugList.fromJson(x))),
        drugListStockEntry: json["drugListStockEntry"],
        loggedIn: json["loggedIn"],
        programList: Map.from(json["programList"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        session: json["session"],
        stockList: json["stockList"],
      );

  Map<String, dynamic> toJson() => {
        "columns": List<dynamic>.from(columns.map((x) => x)),
        "data": List<dynamic>.from(data.map((x) => x)),
        "drugList": List<dynamic>.from(drugList.map((x) => x.toJson())),
        "drugListStockEntry": drugListStockEntry,
        "loggedIn": loggedIn,
        "programList": Map.from(programList)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "session": session,
        "stockList": stockList,
      };
}

class DrugList {
  DrugList({
    this.availableQty,
    this.drugId,
    this.drugName,
    this.fromStoreId,
    this.fromStoreName,
    this.indentDate,
    this.indentId,
    this.indentRemarks,
    this.indentStatus,
    this.packingDescription,
    this.programmeId,
    this.programmeName,
    this.remarks,
    this.requestQty,
    this.stockId,
    this.strengthUnit,
    this.strengthValue,
    this.tax,
    this.toStoreId,
    this.toStoreName,
    this.unitPrice,
    this.updateValue,
  });

  int availableQty;
  String drugId;
  String drugName;
  dynamic fromStoreId;
  dynamic fromStoreName;
  dynamic indentDate;
  dynamic indentId;
  dynamic indentRemarks;
  dynamic indentStatus;
  String packingDescription;
  String programmeId;
  String programmeName;
  dynamic remarks;
  dynamic requestQty;
  dynamic stockId;
  dynamic strengthUnit;
  dynamic strengthValue;
  dynamic tax;
  dynamic toStoreId;
  dynamic toStoreName;
  dynamic unitPrice;
  dynamic updateValue;

  factory DrugList.fromJson(Map<String, dynamic> json) => DrugList(
        availableQty: json["available_qty"],
        drugId: json["drug_id"],
        drugName: json["drug_name"],
        fromStoreId: json["fromStore_id"],
        fromStoreName: json["fromStore_name"],
        indentDate: json["indent_date"],
        indentId: json["indent_id"],
        indentRemarks: json["indent_remarks"],
        indentStatus: json["indent_status"],
        packingDescription: json["packing_description"],
        programmeId: json["programme_id"],
        programmeName: json["programme_name"],
        remarks: json["remarks"],
        requestQty: json["request_qty"],
        stockId: json["stock_id"],
        strengthUnit: json["strength_unit"],
        strengthValue: json["strength_value"],
        tax: json["tax"],
        toStoreId: json["toStore_id"],
        toStoreName: json["toStore_name"],
        unitPrice: json["unit_price"],
        updateValue: json["update_value"],
      );

  Map<String, dynamic> toJson() => {
        "available_qty": availableQty,
        "drug_id": drugId,
        "drug_name": drugName,
        "fromStore_id": fromStoreId,
        "fromStore_name": fromStoreName,
        "indent_date": indentDate,
        "indent_id": indentId,
        "indent_remarks": indentRemarks,
        "indent_status": indentStatus,
        "packing_description": packingDescription,
        "programme_id": programmeId,
        "programme_name": programmeName,
        "remarks": remarks,
        "request_qty": requestQty,
        "stock_id": stockId,
        "strength_unit": strengthUnit,
        "strength_value": strengthValue,
        "tax": tax,
        "toStore_id": toStoreId,
        "toStore_name": toStoreName,
        "unit_price": unitPrice,
        "update_value": updateValue,
      };
}
