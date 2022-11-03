import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/controller/tap_controller.dart';

import 'list_controller.dart';

Future<void>init()async {
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());


}