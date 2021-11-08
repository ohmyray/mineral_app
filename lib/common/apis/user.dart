import '/common/entities/entities.dart';
import '/common/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login({
    UserLoginRequestEntity params,
  }) async {
    var response = await HttpUtil().post(
      '/user/login',
      data: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  /// 注册
  static Future<UserRegisterResponseEntity> register({
    UserRegisterRequestEntity params,
  }) async {
    var response = await HttpUtil().post(
      '/user/registry',
      data: params?.toJson(),
    );
    return UserRegisterResponseEntity.fromJson(response);
  }

  static Future<UserInitResponseEntity> init({
    UserInitRequestEntity params,
  }) async {
    var response = await HttpUtil().post(
      '/user/init',
      data: params?.toJson(),
    );
    return UserInitResponseEntity.fromJson(response);
  }

  /// Profile
  static Future<UserLoginResponseEntity> profile() async {
    var response = await HttpUtil().post(
      '/user/profile',
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  /// Logout
  static Future logout() async {
    return await HttpUtil().post(
      '/user/logout',
    );
  }
}
