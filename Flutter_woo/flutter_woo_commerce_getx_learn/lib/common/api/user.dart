import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

/// 用户 api
class UserApi {
  /// 注册
  static Future<bool> register(UserRegisterReq? req) async {
    var res = await WPHttpService.to.post(
      ApiUrls.register,
      data: req,
    );
    if (res.statusCode == 201) {
      return true;
    }
    return false;
  }
}
