import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro_demo/common/app_colors.dart';
import 'package:flutter_pro_demo/common/button.dart';
import 'package:flutter_pro_demo/pages/login.dart';

import '../common/assets.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  Padding _buildText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Text(
        'Browse & Order All Products at Any Time',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            height: 23 / 20,
            color: AppColors.welcomFontColor),
      ),
    );
  }

  Container _buildImage() {
    return Container(
        child: Image.asset(AssetsImages.welcomePng,
            height: 300, width: double.infinity, fit: BoxFit.contain));
  }

  Padding _buildBtns(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Container(
          child: Row(
        children: [
          // skip
          TextButton(
              onPressed: () {},
              child: Text('Skip',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff2B2A2A),
                      fontWeight: FontWeight.w300))),
          // 弹开
          Spacer(),
          // get started
          ButtonWidget(
              text: '开始',
              width: 139,
              height: 42,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())))
        ],
      )),
    );
  }

  Widget _buildView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 标题
        _buildText(),
        // 间隔
        SizedBox(
          height: 70,
        ),
        // 图片
        _buildImage(),
        // 间隔
        SizedBox(
          height: 70,
        ),
        // 按钮组
        _buildBtns(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _buildView(context),
    );
  }
}
