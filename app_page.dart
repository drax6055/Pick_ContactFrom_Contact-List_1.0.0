import 'package:get/get.dart';
import '../ui/admin_side/admin_dashboard/admin_screen.dart';
import '../ui/admin_side/admin_dashboard/dashboard/dashboard_screen.dart';
import '../ui/auth/auth_screen.dart';
import '../ui/sam_read/sms_screen.dart';
import '../ui/splash/splash_screen.dart';
import '../ui/user_side/user_screen.dart';
import 'app_route.dart';

class AppPages {
  static const initial = Routes.splashScreen;
  static final routes = [
    GetPage(
        name: Routes.authScreen,
        page: () => AuthScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.smsInboxScreen,
        page: () => SmsInboxScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.adminMainScreen,
        page: () => AdminMainScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.userMainScreen,
        page: () => UserMainScreen(),
        transition: Transition.rightToLeft),
  ];
}
