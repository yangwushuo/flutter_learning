import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

class RegisterPinController extends GetxController {
  RegisterPinController();

  // pin 文本输入控制器
  TextEditingController pinController = TextEditingController();

  // 表单key
  GlobalKey formKey = GlobalKey<FormState>();

  // 验证 pin
  String? pinValidator(val) {
    return val == '111111'
        ? null
        : LocaleKeys.commonMessageIncorrect.trParams({"method": "Pin"});
  }

  // 注册界面传值
  UserRegisterReq? req = Get.arguments;

  // 注册
  Future<void> _register() async {
    try {
      Loading.show();

      // 暂时提交，后续改 aes 加密后处理
      bool isOk = await UserApi.register(req);
      if (isOk) {
        Loading.success(
          LocaleKeys.commonMessageSuccess.trParams(
            {
              "method": "Register",
            },
          ),
        );
        Get.back(result: true);
      } else {}

      Get.back(
        result: true,
      );
    } finally {
      Loading.dismiss();
    }
  }

  // pin 触发提交
  void onPinSubmit(String val) {
    debugPrint("onPinSubmit: $val");
  }

  // 按钮提交
  void onBtnSubmit() {
    _register();
  }

  // 按钮返回
  void onBtnBackup() {
    Get.back();
  }

  _initData() {
    update(["register_pin"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  @override
  void onClose() {
    super.onClose();
    // 销毁
    pinController.dispose();
  }
}
