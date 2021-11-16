import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '/global.dart';
import '/common/style/style.dart';
import '/common/routes/routes.dart';
import '/common/utils/utils.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => RefreshConfiguration(
        headerBuilder: () => ClassicHeader(),
        footerBuilder: () => ClassicFooter(),
        hideFooterWhenNotFull: true,
        headerTriggerDistance: 80,
        maxOverScrollExtent: 100,
        footerTriggerDistance: 150,
        child: GetMaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.light,
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          initialRoute: AppPages.INITIAL,
          builder: EasyLoading.init(),
          navigatorObservers: [AppPages.observer],
          enableLog: true,
          logWriterCallback: Logger.write,
        ),
      ),
    );
  }
}
