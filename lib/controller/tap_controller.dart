import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x=0;
  int get x=>_x;
  RxInt _y=0.obs;
  RxInt get y=>_y;
  RxInt _z=0.obs;
  int get z => _z.value;

  void increaseX(){
    _x++;
    update();
    print(_y);
  }
  void decreaseX(){
    _x--;
    update();

  }
  void increaseY(){
    _y.value++;

    print(_x);
  }
  void decreaseY(){
    _y.value--;

    print(_y);
  }
  void totalxy(){
    _z.value=x+_y.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("$x"),
      ),

    );
  }
}
