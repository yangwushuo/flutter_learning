import 'package:get/get.dart';
import 'package:logger/logger.dart';

class MyLog extends GetxService {
  static Logger get to => Get.find<Logger>();
}