import 'package:flutter/material.dart';
import '/common/values/values.dart';
import '/common/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignUpPage extends GetView<SignUpController> {
  // logo
  Widget _buildLogo() {
    return Container(
      width: 110.w,
      margin: EdgeInsets.only(top: (40 + 44.0).h), // 顶部系统栏 44px
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 76.w,
            width: 76.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 76.w,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: const [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: BorderRadius.all(
                          Radius.circular((76 * 0.5).w)), // 父容器的50%
                    ),
                    child: Container(),
                  ),
                ),
                Positioned(
                  top: 13.w,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h),
            child: Text(
              "MINERAL",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: 24.sp,
                height: 1,
              ),
            ),
          ),
          Text(
            "矿产资源",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  // 注册表单
  Widget _buildInputForm() {
    return Container(
      width: 295.w,
      // height: 204,
      margin: EdgeInsets.only(top: 49.h),
      child: Column(
        children: [
          // fullName input
          inputTextEdit(
            controller: controller.fullnameController,
            keyboardType: TextInputType.text,
            hintText: "用户名",
            marginTop: 0,
          ),
          // email input
          inputTextEdit(
            controller: controller.emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "手机号",
          ),
          // password input
          inputTextEdit(
            controller: controller.passController,
            keyboardType: TextInputType.visiblePassword,
            hintText: "密    码",
            isPassword: true,
          ),

          // 创建
          Container(
            height: 44.h,
            margin: EdgeInsets.only(top: 15.h),
            child: btnFlatButtonWidget(
              onPressed: controller.handleSignUp,
              width: 295.w,
              fontWeight: FontWeight.w600,
              title: "创 建 账 号",
            ),
          ),
          // Spacer(),

          // Fogot password
          // Padding(
          //   padding: EdgeInsets.only(top: 8.0),
          //   child: TextButton(
          //     onPressed: controller.handleFogotPassword,
          //     child: Text(
          //       "Fogot password?",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         color: AppColors.secondaryElementText,
          //         fontFamily: "Avenir",
          //         fontWeight: FontWeight.w400,
          //         fontSize: 16.sp,
          //         height: 1, // 设置下行高，否则字体下沉
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  // 有账号
  Widget _buildHaveAccountButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: btnFlatButtonWidget(
        onPressed: controller.handleNavPop,
        width: 294,
        gbColor: AppColors.secondaryElement,
        fontColor: AppColors.primaryText,
        title: "已 有 账 号",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: transparentAppBar(
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.arrow_back,
      //       color: AppColors.primaryText,
      //     ),
      //     onPressed: controller.handleNavPop,
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(
      //         Icons.info_outline,
      //         color: AppColors.primaryText,
      //       ),
      //       onPressed: controller.handleTip,
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              _buildLogo(),
              _buildInputForm(),
              const Spacer(),
              _buildHaveAccountButton(),
            ],
          ),
        ),
      ),
    );
  }
}
