import 'package:calcubes/app/presentation/controllers/auth/splash/splash_dependencies.dart';
import 'package:calcubes/app/presentation/controllers/hundreds/count/hundreds_count_dependencies.dart';
import 'package:calcubes/app/presentation/controllers/ones/count/ones_count_dependencies.dart';
import 'package:calcubes/app/presentation/controllers/tens/count/tens_count_dependencies.dart';
import 'package:calcubes/app/presentation/controllers/tens_ones/count/tens_ones_count_dependencies.dart';
import 'package:calcubes/app/presentation/views/auth/splash/splash_page.dart';
import 'package:calcubes/app/presentation/views/home/home_page.dart';
import 'package:calcubes/app/presentation/views/hundreds/count/hundreds_count_page.dart';
import 'package:calcubes/app/presentation/views/ones/count/ones_count_page.dart';
import 'package:calcubes/app/presentation/views/tens/count/tens_count_page.dart';
import 'package:calcubes/app/presentation/views/tens_ones/count/tens_ones_count_page.dart';
import 'package:get/get.dart';

class Routes {
  static const splash = '/';

  static const home = '/home';

  static const onesCount = '/ones/count';

  static const tensCount = '/tens/count';
  static const tensOnesCount = '/tens_ones/count';

  static const hundredsCount = '/hundreds/count';

  static final pageList = [
    GetPage(
      name: Routes.splash,
      binding: SplashDependencies(),
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.home,
      // binding: HomeDependencies(),
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.onesCount,
      binding: OnesCountDependencies(),
      page: () => OnesCountPage(),
    ),
    GetPage(
      name: Routes.tensCount,
      binding: TensCountDependencies(),
      page: () => TensCountPage(),
    ),
    GetPage(
      name: Routes.tensOnesCount,
      binding: TensOnesCountDependencies(),
      page: () => TensOnesCountPage(),
    ),
    GetPage(
      name: Routes.hundredsCount,
      binding: HundredsCountDependencies(),
      page: () => HundredsCountPage(),
    ),
  ];
}
