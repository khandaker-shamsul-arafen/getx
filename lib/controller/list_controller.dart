import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list=[].obs;
  RxList get list=>_list;
  void setValue(int x){
    _list.add(x);
    print(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
