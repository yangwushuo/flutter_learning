import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro_demo/common/app_colors.dart';
import 'package:flutter_pro_demo/common/assets.dart';
import 'package:flutter_pro_demo/common/button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  // 检查账号输入有效
  bool isUserNameValid = false;

  Container _buildImage() {
    return Container(
      child: Image.asset(
        AssetsImages.logoPng,
        width: 60,
        height: 57,
      ),
    );
  }

  Text _buildTitle() {
    return Text(
      'Lets Sign You In',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Text _buildSubTitle() {
    return Text(
      'Wlecome back, you been missed',
      style: TextStyle(
          fontSize: 13, fontWeight: FontWeight.w300, color: Color(0XFFEEEEEE)),
    );
  }

  Widget _buildForm() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: EdgeInsets.fromLTRB(20, 70, 20, 35),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(35)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 账户
          Text('手机/邮箱',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF838383))),
          SizedBox(height: 15),
          TextField(
            onChanged: (value) {
              setState(() {
                if (value.isNotEmpty && value.length > 6) {
                  isUserNameValid = true;
                }
                print("un:::${isUserNameValid}");
              });
            },
            decoration: InputDecoration(
                hintText: "@",
                prefixIcon:
                    Image.asset(AssetsImages.userPng, width: 24, height: 16),
                suffixIcon: isUserNameValid == true
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AssetsImages.donePng,
                            width: 24, height: 16))
                    : null),
          ),
          SizedBox(height: 35),
          // 密码
          Text('密码',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF838383))),
          SizedBox(height: 15),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "6位密码",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                      Image.asset(AssetsImages.passPng, width: 16, height: 12),
                ),
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: Text('忘记?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0274BC))),
                )),
          ),
          SizedBox(height: 29),
          // 登录
          ButtonWidget(
              text: '登录',
              height: 57,
              onPressed: (){}),
          SizedBox(height: 15),
          // 提示注册
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('还没有账号?',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Color(0xFF1717171))),
              TextButton(
                  onPressed: () {},
                  child: Text('点击注册',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: AppColors.backgroundSplash)))
            ],
          )
          // end
        ],
      ),
    );
  }

  Widget _buildView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          _buildImage(),
          //间距
          SizedBox(height: 22),
          // 主标题
          _buildTitle(),
          // 间距
          SizedBox(height: 10),
          // 子标题
          _buildSubTitle(),
          // 间距
          SizedBox(height: 55),
          // 表单
          _buildForm()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: AppColors.backgroundSplash, body: _buildView());
  }
}
