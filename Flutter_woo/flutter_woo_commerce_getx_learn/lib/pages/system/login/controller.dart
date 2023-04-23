import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

class LoginController extends GetxController {
  LoginController();

  /// 定义输入控制器
  TextEditingController userNameController =
      TextEditingController(text: "userName");
  TextEditingController passwordController =
      TextEditingController(text: "password");

  /// 表单
  GlobalKey formKey = GlobalKey<FormState>();

  /// Sign in
  Future<void> onSignIn() async {
    if ((formKey.currentState as FormState).validate()) {
      try {
        Loading.show();

        // aes 加密密码
        var password = EncryptUtil().aesEncode(passwordController.text);

        // api 请求
        UserTokenModel res = await UserApi.login(UserLoginReq(
          username: userNameController.text,
          password: password,
        ));

        // 本地保存 token
        await UserService.to.setToken(res.token!);
        // 获取用户资料
        await UserService.to.getProfile();

        Loading.success();
        Get.back(result: true);
      } finally {
        Loading.dismiss();
      }
    }
  }

  /// Sign up
  void onSignUp() {
    Get.offNamed(RouteNames.systemRegister);
  }

  _initData() {
    update(["login"]);
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
    userNameController.dispose();
    passwordController.dispose();
  }
}
