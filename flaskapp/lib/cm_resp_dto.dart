// To parse this JSON data, do
//
//     final cmRespDto = cmRespDtoFromJson(jsonString);

import 'dart:convert';

CmRespDto cmRespDtoFromJson(String str) => CmRespDto.fromJson(json.decode(str));

String cmRespDtoToJson(CmRespDto data) => json.encode(data.toJson());

class CmRespDto {
  CmRespDto({
    this.code,
    this.msg,
    this.data,
  });

  int? code;
  String? msg;
  int? data;

  factory CmRespDto.fromJson(Map<String, dynamic> json) => CmRespDto(
        code: json["code"],
        msg: json["msg"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "msg": msg,
        "data": data,
      };
}
