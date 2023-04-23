import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

class RegisterController extends GetxController {
  RegisterController();

  // 通过 GlobalKey 的方式管理 Form 表单子项的验证功能
  GlobalKey formKey = GlobalKey<FormState>();

  /// 用户名
  TextEditingController userNameController =
      TextEditingController(text: "yangwushuo");

  /// 邮件
  TextEditingController emailController =
      TextEditingController(text: "jasonyang19991210@gmai.com");

  /// 姓
  TextEditingController firstNameController =
      TextEditingController(text: "jason");

  /// 名
  TextEditingController lastNameController =
      TextEditingController(text: "yang");

  /// 密码
  TextEditingController passwordController =
      TextEditingController(text: "123456");

  _initData() {
    update(["register"]);
  }

  void onTap() {}

  // 注册
  void onSignUp() {
    if ((formKey.currentState as FormState).validate()) {
      // aes 加密密码
      var password = EncryptUtil().aesEncode(passwordController.text);
      // 验证通过提交数据
      Get.offNamed(
        RouteNames.systemRegisterPin,
        arguments: UserRegisterReq(
          username: userNameController.text,
          email: emailController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          password: password,
        ),
      );
    }
  }

  // 登录
  void onSignIn() {
    Get.offNamed(RouteNames.systemLogin);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // 释放
  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    passwordController.dispose();
  }
}
