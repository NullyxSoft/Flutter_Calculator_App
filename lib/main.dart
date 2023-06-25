import 'package:calculator_app/core/constants/app_routes.dart';
import 'package:calculator_app/core/ui/shared/custom_themes.dart';
import 'package:calculator_app/core/ui/views/page_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
      path: RoutePage.RoutePath,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      initialRoute: RoutePage.InitialRoute,
      theme: CustomTheme.LightTheme(),
      darkTheme: CustomTheme.DarkTheme(),
      themeMode: ThemeMode.system,
      routes: {
        RoutePage.InitialRoute: (context) => const PageControllerView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
