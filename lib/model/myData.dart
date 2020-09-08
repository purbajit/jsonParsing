class MyData {
  String columns;
  String data;
  List<DrugList> drugList;
  List<ProgramList> programList;

  MyData.fromJson(Map<String, dynamic> json) {
    columns = json['columns'];
    data = json['data'];
    if (json['drugList'] != null) {
      drugList = new List<DrugList>();
      json['drugList'].forEach((v) {
        drugList.add(new DrugList.fromJson(v));
      });
    }
    if (json[' programList'] != null) {
      programList = new List<ProgramList>();
      json[' programList'].forEach((v) {
        programList.add(new ProgramList.fromJson(v));
      });
    }
  }
}

class DrugList {
  String drugId;
  String drugName;
  String programmeId;
  String programmeName;
  String expiryDate;
  String packingDescription;
  String availableQty;
  // bool verified;

  DrugList.fromJson(Map<String, dynamic> json) {
    drugId = json['drug_id'];
    drugName = json['drug_name'];
    programmeId = json['programme_id'];
    programmeName = json['programme_name'];
    expiryDate = json['expiry_date'];
    packingDescription = json['packingDescription'];
    availableQty = json['available_qty'];
    // verified = json['verified'];
  }
}

class ProgramList {
  String programmeId;
  String programmeName;

  ProgramList.fromJson(Map<String, dynamic> json) {
    programmeId = json['programme_id'];
    programmeName = json['programme_name'];
  }
}
