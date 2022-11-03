import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/controller/tap_controller.dart';

import 'customtext.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller=Get.find();//Find Instancefrom diffrent Class
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back),

        ),
      ),
      body:  Column(
        children: [
          // GetBuilder<TapController>(builder: (access_data){
          //   return  Container(
          //     margin: const EdgeInsets.all(10),
          //     width: double.maxFinite,
          //     height: 100,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Color(0xFF89dad0),
          //     ),
          //     child: Center(
          //         child: customtext(
          //           text: access_data.x.toString(),
          //           fontsize: 20,
          //           color: Colors.black,
          //         )),
          //   );
          //
          // }),
    GetBuilder<TapController>(
      builder: (_) {
       return Container(
        margin: const EdgeInsets.all(10),
        width: double.maxFinite,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF89dad0),
        ),
        child: Center(
            child: customtext(
              text: controller.x.toString(),
              fontsize: 20,
              color: Colors.black,
            )),
      );  },

    ),
          GestureDetector(
            onTap: () {
              controller.decreaseX();

            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF89dad0),
              ),
              child: Center(
                  child: customtext(
                    text: 'Decrease X',
                    fontsize: 20,
                    color: Colors.black,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
