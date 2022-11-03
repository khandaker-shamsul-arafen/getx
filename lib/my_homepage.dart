import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/customtext.dart';
import 'package:getxdemo/first_page.dart';
import 'package:getxdemo/main.dart';
import 'package:getxdemo/second_page.dart';
import 'package:getxdemo/test.dart';

import 'controller/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // TapController controler =Get.put(TapController());//Created and Initialize
   //dependency injection
    TapController controler =Get.find();
    return Scaffold(
      appBar: AppBar(

        title: Text("GetxDemo"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        child: Column(
          children: [
            GetBuilder<TapController>(builder: (_){
              return  Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: Center(
                    child: customtext(
                      text: controler.x.toString() ,//Show data
                      fontsize: 20,
                      color: Colors.black,
                    )),
              );
            }),

            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => test(text1: 'shanto')));
                controler.increaseX(); //call Method
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
                  text: 'call increse method',
                  fontsize: 20,
                  color: Colors.black,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => test(text1: 'shanto')));
                  Get.to(()=>FirstPage());
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
                      text: 'Go to First page',
                      fontsize: 20,
                      color: Colors.black,
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
               Get.to(()=>SecondPage());
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
                      text: 'Go to Second Page ',
                      fontsize: 20,
                      color: Colors.black,
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => test(text1: 'shanto')));
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
                      text: 'Hi there',
                      fontsize: 20,
                      color: Colors.black,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
