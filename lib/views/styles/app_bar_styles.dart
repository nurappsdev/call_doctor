import 'package:doctor/doctor.dart';

class AppAppBarStyles {
  AppAppBarStyles._();
  static AppBar get transparent => AppBar(
        toolbarHeight: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
      );
  static AppBar get white => AppBar(
        toolbarHeight: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white3,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.white3,
          systemNavigationBarColor: AppColors.white3,
          systemNavigationBarDividerColor: AppColors.white3,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
      );
}
