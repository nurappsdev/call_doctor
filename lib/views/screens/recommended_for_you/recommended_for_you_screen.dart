import 'package:doctor/views/widgets/celebrity_widget.dart';
import 'package:doctor/views/widgets/title_bar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:doctor/doctor.dart';
// import 'package:get/get.dart';

// import '../../widgets/selivety_widget.dart';

class RecommendedForYouScreen extends StatelessWidget {
  static const String routeName = "/recommended";
  RecommendedForYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: TitleBarWidget(
          title: 'Recommended for you',
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: MasonryGridView.count(
            shrinkWrap: true,
            itemCount: 10,
            crossAxisCount: 2,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.w,
            itemBuilder: (context, index) {
              return const CelebrityWidget(
                type: CelebrityWidgetType.normal,
              );
            },
          ),
        ),
      ),
    );
  }
}
