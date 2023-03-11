import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic/controllers/list_controller.dart';
import 'package:getx_basic/controllers/tap_controller.dart';
import 'package:getx_basic/first_page.dart';
import 'package:getx_basic/second_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan),
                child: Center(
                    child: Text(
                  'Increased Value ${controller.x}',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan),
                child: const Center(
                    child: Text(
                  'TAP 1',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> FirstPage());
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan),
                child: const Center(
                    child: Text(
                  'First Page',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(() => SecondPage());
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan),
                child: const Center(
                    child: Text(
                  'Second Page',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GetBuilder<ListController>(
              builder: (_){
                return Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan),
                  child:  Center(
                      child: Text(
                        'List Values ${listController.list.value.toList()}',
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      )),
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}
