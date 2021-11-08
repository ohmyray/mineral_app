import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '/common/apis/apis.dart';
import '/common/entities/entities.dart';
import '/common/routes/routes.dart';
import '/common/store/store.dart';
import '/common/utils/utils.dart';
import '/common/widgets/widgets.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignInController extends GetxController {
  final state = SignInState();

  SignInController();

  // email的控制器
  final TextEditingController emailController = TextEditingController();
  // 密码的控制器
  final TextEditingController passController = TextEditingController();

  // final MyRepository repository;
  // SignInController({@required this.repository}) : assert(repository != null);
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};
  String platformDeviceId = '未知设备';

  Future<void> initPlatformState() async {
    Map<String, dynamic> deviceData = <String, dynamic>{};

    try {
      if (Platform.isAndroid) {
        deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
        platformDeviceId = deviceData['androidId'];
      } else if (Platform.isIOS) {
        deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
        platformDeviceId = deviceData['identifierForVendor'];
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'androidId': build.androidId,
      'systemFeatures': build.systemFeatures,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

  // 跳转 注册界面
  handleNavSignUp() {
    emailController.clear();
    passController.clear();
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  // 忘记密码
  handleFogotPassword() {
    toastInfo(msg: '忘记密码');
  }

  // 执行登录操作
  handleSignIn() async {
    // if (!duIsEmail(_emailController.value.text)) {
    //   toastInfo(msg: '请正确输入邮件');
    //   return;
    // }
    // if (!duCheckStringLength(_passController.value.text, 6)) {
    //   toastInfo(msg: '密码不能小于6位');
    //   return;
    // }

    UserLoginRequestEntity params = UserLoginRequestEntity(
      loginName: emailController.value.text,
      password: passController.value.text,
      userDevice: platformDeviceId,
      // password: duSHA256(passController.value.text,),
    );

    UserLoginResponseEntity userProfile = await UserAPI.login(
      params: params,
    );

    if (userProfile.code == 1000 && userProfile.message == '保存失败') {
      EasyLoading.showError(userProfile.result);
    } else {
      UserStore.to.saveProfile(userProfile);
      Get.offAndToNamed(AppRoutes.Application);
    }
  }

  @override
  void onReady() {
    super.onReady();
    initPlatformState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
