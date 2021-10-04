import 'package:flaskapp/my_data_controller.dart';
import 'package:flaskapp/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyDataController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("종합점수 예측 하려면 버튼을 클릭하세요!!"),
              ElevatedButton(
                onPressed: () {
                  controller.predict();
                },
                child: Text("예측"),
              ),
              Obx(
                () => Text("${controller.score}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
