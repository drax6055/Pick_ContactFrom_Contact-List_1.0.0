import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:notification/route/app_page.dart';
import 'package:notification/route/app_route.dart';
import 'package:get/get.dart';

FlutterSecureStorage? storage;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter SMS Inbox App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        initialRoute: Routes.splashScreen,
        getPages: AppPages.routes,
      ),
    );
  }
}
