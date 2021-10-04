import 'package:flaskapp/cm_resp_dto.dart';
import 'package:flaskapp/my_data.dart';
import 'package:flaskapp/my_provider.dart';
import 'package:get/get.dart';

class MyDataController extends GetxController {
  final MyProvider _myProvider = MyProvider();
  final score = 0.obs;

  Future<void> predict() async {
    MyData myData = MyData(data1: "data1", data2: "data2");
    Response response = await _myProvider.predict(myData.toJson());
    dynamic body = response.body;
    print(body);
    CmRespDto cmRespDto = CmRespDto.fromJson(body);
    print(cmRespDto.data);
    score.value = cmRespDto.data!;
  }
}
