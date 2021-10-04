// To parse this JSON data, do
//
//     final myData = myDataFromJson(jsonString);

import 'dart:convert';

MyData myDataFromJson(String str) => MyData.fromJson(json.decode(str));

String myDataToJson(MyData data) => json.encode(data.toJson());

class MyData {
  MyData({
    this.data1,
    this.data2,
  });

  String? data1;
  String? data2;

  factory MyData.fromJson(Map<String, dynamic> json) => MyData(
        data1: json["data1"],
        data2: json["data2"],
      );

  Map<String, dynamic> toJson() => {
        "data1": data1,
        "data2": data2,
      };
}
