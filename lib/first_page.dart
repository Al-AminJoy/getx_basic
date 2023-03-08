import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TapController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<TapController>(builder: (_){
            return Container(
            width: double.maxFinite,
            height: 100,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.cyan),
          child:  Center(
          child: Text(
          'Increased Value ${controller.x}',
          style: const TextStyle(fontSize: 20, color: Colors.white),
          )),
          );
          }),

          GestureDetector(
            onTap: (){
              controller.decreaseX();
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
                    'Decrease Value',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}

