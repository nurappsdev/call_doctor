import 'package:doctor/doctor.dart';
import 'package:doctor/views/screens/book_appointment.dart';

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
        );
      },
      child: BookAppointmentScreen(),
    );
  }
}
