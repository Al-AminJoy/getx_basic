import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic/Home.dart';
import 'package:getx_basic/controllers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Obx(() => Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.cyan),
            child:  Center(
                child: Text(
                  'Increase Y Value ${Get.find<TapController>().y.value}',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
          )),
          GestureDetector(
            onTap: (){
              Get.to(() => Home());
            },
            child: Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.cyan),
              child:  Center(
                  child: Text(
                    'Increased X Value ${Get.find<TapController>().x}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),

          GestureDetector(
            onTap: (){
              Get.find<TapController>().increaseY();
            },
            child: Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.cyan),
              child:  const Center(
                  child: Text(
                    'Increase Y Value',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
