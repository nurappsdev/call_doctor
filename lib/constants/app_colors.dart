import 'package:doctor/doctor.dart';

class AppColors {
  AppColors._();

  static Color get transparent => Colors.transparent;

  static Color get white => const Color(0xFFFFFFFF);

  static Color get white2 => const Color(0xFFF3F3F3);

  static Color get white3 => const Color(0xFFFBFBFB);

  static Color get black => const Color(0xFF454545);

  static Color get black1 => const Color(0xFF646464);

  static Color get grey => const Color(0xFF949494);

  static Color get orange => const Color(0xFFFA5115);

  static Color get red => const Color(0xFFB81F25);

  static Color get red1 => const Color(0xFFFAF1F0);

  static Color get red2 => const Color(0xFFFAF2F0);

  static Color get blue => const Color(0xFF3092C1);

  static Color get green => const Color(0xFF16A34A);

  static Color custom(String code) {
    final color = code.replaceAll('#', '');
    return Color(int.parse('0xFF$color'));
  }

  static Color get random {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }
}
