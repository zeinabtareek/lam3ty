import 'dart:convert';
/// responseCode : 200
/// responseType : ""
/// response : [{"id":1,"name":"test","description":"12","price":12.00,"createdDate":"2022-06-25T18:46:21.52","updatedDate":null}]
/// responseMasg : "تم الاسترجاع المعلومات بنجاح"

ServicesModel servicesModelFromJson(String str) => ServicesModel.fromJson(json.decode(str));
String servicesModelToJson(ServicesModel data) => json.encode(data.toJson());
class ServicesModel {
  ServicesModel({
    int? responseCode,
    String? responseType,
    List<Response>? response,
    String? responseMasg,}){
    _responseCode = responseCode;
    _responseType = responseType;
    _response = response;
    _responseMasg = responseMasg;
  }

  ServicesModel.fromJson(dynamic json) {
    _responseCode = json['responseCode'];
    _responseType = json['responseType'];
    if (json['response'] != null) {
      _response = [];
      json['response'].forEach((v) {
        _response?.add(Response.fromJson(v));
      });
    }
    _responseMasg = json['responseMasg'];
  }
  int? _responseCode;
  String? _responseType;
  List<Response>? _response;
  String? _responseMasg;
  ServicesModel copyWith({  int? responseCode,
    String? responseType,
    List<Response>? response,
    String? responseMasg,
  }) => ServicesModel(  responseCode: responseCode ?? _responseCode,
    responseType: responseType ?? _responseType,
    response: response ?? _response,
    responseMasg: responseMasg ?? _responseMasg,
  );
  int? get responseCode => _responseCode;
  String? get responseType => _responseType;
  List<Response>? get response => _response;
  String? get responseMasg => _responseMasg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['responseCode'] = _responseCode;
    map['responseType'] = _responseType;
    if (_response != null) {
      map['response'] = _response?.map((v) => v.toJson()).toList();
    }
    map['responseMasg'] = _responseMasg;
    return map;
  }

}

/// id : 1
/// name : "test"
/// description : "12"
/// price : 12.00
/// createdDate : "2022-06-25T18:46:21.52"
/// updatedDate : null

Response responseFromJson(String str) => Response.fromJson(json.decode(str));
String responseToJson(Response data) => json.encode(data.toJson());
class Response {
  Response({
    int? id,
    String? name,
    String? description,
    double? price,
    String? createdDate,
    dynamic updatedDate,}){
    _id = id;
    _name = name;
    _description = description;
    _price = price;
    _createdDate = createdDate;
    _updatedDate = updatedDate;
  }

  Response.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _createdDate = json['createdDate'];
    _updatedDate = json['updatedDate'];
  }
  int? _id;
  String? _name;
  String? _description;
  double? _price;
  String? _createdDate;
  dynamic _updatedDate;
  Response copyWith({  int? id,
    String? name,
    String? description,
    double? price,
    String? createdDate,
    dynamic updatedDate,
  }) => Response(  id: id ?? _id,
    name: name ?? _name,
    description: description ?? _description,
    price: price ?? _price,
    createdDate: createdDate ?? _createdDate,
    updatedDate: updatedDate ?? _updatedDate,
  );
  int? get id => _id;
  String? get name => _name;
  String? get description => _description;
  double? get price => _price;
  String? get createdDate => _createdDate;
  dynamic get updatedDate => _updatedDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['price'] = _price;
    map['createdDate'] = _createdDate;
    map['updatedDate'] = _updatedDate;
    return map;
  }

}