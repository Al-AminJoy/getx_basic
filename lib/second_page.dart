import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic/ThirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          GestureDetector(
            onTap: (){
              Get.to(()=> ThirdPage());
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
                    'Third Page',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
