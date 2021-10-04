import 'package:get/get.dart';

// aws 아이피로 변경 - 배포 끝나면!!
const host = "http://192.168.0.5:5500";

class MyProvider extends GetConnect {
  Future<Response> predict(Map data) => post("$host/", data);
}
