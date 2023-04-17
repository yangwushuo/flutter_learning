import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          // 多语言切换
          ListTile(
            onTap: controller.onLanguageSelected,
            title: Text("语言: ${ConfigService.to.locale.toLanguageTag()}"),
          ),

          // 主题切换
          ListTile(
            onTap: controller.onThemeSelected,
            title: Text("主题切换"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StylesIndexController>(
      init: StylesIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text(LocaleKeys.stylesTitle.tr)),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
