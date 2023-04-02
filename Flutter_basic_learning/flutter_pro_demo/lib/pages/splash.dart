import 'package:flutter/material.dart';
import 'package:flutter_pro_demo/common/app_colors.dart';
import 'package:flutter_pro_demo/common/assets.dart';
import 'package:flutter_pro_demo/pages/welcome.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // 计数变量
  final duration = 3;
  int number = 0;

  // 倒计时函数
  Future<void> _countdown() async {
    number = duration;
    for (var i = 0; i < duration; i++) {
      await Future.delayed(Duration(seconds: 1), () {
        if (mounted == true) {
          setState(() {
            number--;
          });
        }
      });

      if (number == 0) {
        // 跳转欢迎页面
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()));
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _countdown();
  }

  // 文字显示
  Text _buildText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 19,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          color: Colors.white,
          height: 22 / 19),
    );
  }

  Widget _buildLogo() {
    return Stack(alignment: Alignment.center, children: [
      // 底部
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(120 / 2)),
      ),

      // 图片
      Image.asset(
        AssetsImages.logoPng,
        width: 84,
        height: 80,
      ),
    ]);
  }

  Widget _buildView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          _buildLogo(),
          // 间距
          SizedBox(height: 24),
          // 标题
          _buildText('Online Market'),
          // 间距
          SizedBox(height: 27),
          // 计数器
          _buildText(number > 0 ? "${number}" : 'done')
          // end
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundSplash, body: _buildView(context));
  }
}
