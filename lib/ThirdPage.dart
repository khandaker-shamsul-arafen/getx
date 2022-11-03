import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/controller/list_controller.dart';
import 'package:getxdemo/controller/tap_controller.dart';
import 'package:getxdemo/my_homepage.dart';
import 'package:getxdemo/second_page.dart';

import 'customtext.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController access_data=Get.find();
    ListController listController =Get.put(ListController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.to(()=>SecondPage());
        }, icon: Icon(Icons.arrow_back),

        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=>Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: customtext(
                      //text: access_data.x.toString(),
                      text:"Y value"+ Get.find<TapController>().y.value.toString(),
                      fontsize: 20,
                      color: Colors.black,
                    )),
              ),),
              GestureDetector(
                onTap: () {
                  Get.to(()=>MyHomePage());
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
                        //text: access_data.x.toString(),
                        text:"X value"+ Get.find<TapController>().x.toString(),
                        fontsize: 20,
                        color: Colors.black,
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(()=>MyHomePage());
                  Get.find<TapController>().increaseY();
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
                        //text: access_data.x.toString(),
                        text:"Y value",
                        fontsize: 20,
                        color: Colors.black,
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(()=>MyHomePage());
                  Get.find<TapController>().increaseY();
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
                        //text: access_data.x.toString(),
                        text:"Total X+Y",
                        fontsize: 20,
                        color: Colors.black,
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(()=>MyHomePage());
                  Get.find<TapController>().totalxy();
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
                        //text: access_data.x.toString(),
                        text:"Z value"+Get.find<TapController>().z.toString(),
                        fontsize: 20,
                        color: Colors.black,
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(()=>MyHomePage());
                  Get.find<ListController>().setValue(Get.find<TapController>().z);
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
                        //text: access_data.x.toString(),
                        text:"Save total",
                        fontsize: 20,
                        color: Colors.black,
                      )),
                ),
              ),


            ],
          ),]
        ),
      ),
    );
  }
}
