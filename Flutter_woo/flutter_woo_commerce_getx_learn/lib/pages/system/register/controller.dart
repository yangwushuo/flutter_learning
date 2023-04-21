import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RegisterController();

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
  void onSignUp() {}

  // 登录
  void onSignIn() {}

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
