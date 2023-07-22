import 'package:doctor/doctor.dart';
import 'package:doctor/views/screens/book_appointment.dart';
import 'package:doctor/views/screens/booking/booking_screen.dart';

import 'package:doctor/views/screens/category/category_screen.dart';
import 'package:doctor/views/screens/home/home_screen.dart';
import 'package:doctor/views/screens/pending/pendign_screen.dart';
import 'package:doctor/views/screens/registration/registration_screen.dart';
import 'package:doctor/views/screens/sAdd_card/sadd_card_screen.dart';
import 'package:doctor/views/screens/sing_in/sing_in_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const Doctor());
}

class Doctor extends StatelessWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, widget) {
        return MaterialApp(
          title: 'Doctor',
          debugShowCheckedModeBanner: false,
          navigatorKey: AppKeys.navigation,
          theme: ThemeData(),
          home: widget,
          initialRoute: SingInScreen.routeName,
          routes: {
            SingInScreen.routeName: (context) => SingInScreen(),
            "/homepage": (context) => HomeScreen(),
            "/regScreen": (context) => RegistrationScreen(),
          },
        );
      },
      // child: BookingScreen(),
    );
  }
}
