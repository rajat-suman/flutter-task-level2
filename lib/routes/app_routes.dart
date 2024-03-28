import 'package:get/get.dart';
import '../presentation/getstarted_screen/getstarted_screen.dart';
import '../presentation/getstarted_screen/binding/getstarted_binding.dart';
import '../presentation/completeprofile_screen/completeprofile_screen.dart';
import '../presentation/completeprofile_screen/binding/completeprofile_binding.dart';
import '../presentation/chooselang_screen/chooselang_screen.dart';
import '../presentation/chooselang_screen/binding/chooselang_binding.dart';
import '../presentation/aboutme_screen/aboutme_screen.dart';
import '../presentation/aboutme_screen/binding/aboutme_binding.dart';
import '../presentation/profilepic_screen/profilepic_screen.dart';
import '../presentation/profilepic_screen/binding/profilepic_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String getstartedScreen = '/getstarted_screen';

  static const String completeprofileScreen = '/completeprofile_screen';

  static const String chooselangScreen = '/chooselang_screen';

  static const String aboutmeScreen = '/aboutme_screen';

  static const String profilepicScreen = '/profilepic_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: getstartedScreen,
      page: () => GetstartedScreen(),
      bindings: [
        GetstartedBinding(),
      ],
    ),
    GetPage(
      name: completeprofileScreen,
      page: () => CompleteprofileScreen(),
      bindings: [
        CompleteprofileBinding(),
      ],
    ),
    GetPage(
      name: chooselangScreen,
      page: () => ChooselangScreen(),
      bindings: [
        ChooselangBinding(),
      ],
    ),
    GetPage(
      name: aboutmeScreen,
      page: () => AboutmeScreen(),
      bindings: [
        AboutmeBinding(),
      ],
    ),
    GetPage(
      name: profilepicScreen,
      page: () => ProfilepicScreen(),
      bindings: [
        ProfilepicBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => GetstartedScreen(),
      bindings: [
        GetstartedBinding(),
      ],
    )
  ];
}
