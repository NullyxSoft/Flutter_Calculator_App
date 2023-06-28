import 'package:calculator_app/core/constants/app_routes.dart';
import 'package:calculator_app/core/models/bindings.dart';
import 'package:calculator_app/core/ui/shared/custom_themes.dart';
import 'package:calculator_app/core/ui/views/menu_economy_views.dart/currency_view.dart';
import 'package:calculator_app/core/ui/views/menu_economy_views.dart/investment_view.dart';
import 'package:calculator_app/core/ui/views/menu_economy_views.dart/loan_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/BMI.view.dart';
import 'package:calculator_app/core/ui/views/menu_views/age_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/area_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/data_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/date_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/discount_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/lenght_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/mass_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/numeral_system.dart';
import 'package:calculator_app/core/ui/views/menu_views/speed.dart';
import 'package:calculator_app/core/ui/views/menu_views/temperature_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/time_view.dart';
import 'package:calculator_app/core/ui/views/menu_views/volume_view.dart';
import 'package:calculator_app/core/ui/views/page_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MyBinding().dependencies();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
      path: PageRoutes.RoutePath,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      initialBinding: MyBinding(),
      initialRoute: PageRoutes.InitialRoute,
      theme: CustomTheme.LightTheme(),
      darkTheme: CustomTheme.DarkTheme(),
      themeMode: ThemeMode.system,
      routes: {
        PageRoutes.InitialRoute: (context) => const PageControllerView(),
        PageRoutes.Age: (context) => const AgeCalculatePage(),
        PageRoutes.Area: (context) => const AreaCalculatePage(),
        PageRoutes.BMI: (context) => const BMICAlculatePage(),
        PageRoutes.Data: (context) => const DataCalculatePage(),
        PageRoutes.Date: (context) => const DateCalculatePage(),
        PageRoutes.Discount: (context) => const DiscountCalculatePage(),
        PageRoutes.Lenght: (context) => const LenghtCalculatePage(),
        PageRoutes.Mass: (context) => const MassCalculatePage(),
        PageRoutes.NumeralSystem: (context) => const NumeralSystemCalculatePage(),
        PageRoutes.Speed: (context) => const SpeedCalculatePage(),
        PageRoutes.Temperature: (context) => const TemperatureCalculatePage(),
        PageRoutes.Time: (context) => const TimeCalculatePage(),
        PageRoutes.Volume: (context) => const VolumeCalculatePage(),
        PageRoutes.Currency: (context) => const CurrencyCalculatorPage(),
        PageRoutes.Investment: (context) => const InvestmentCalculatorPage(),
        PageRoutes.Loan: (context) => const LoanCalculatorPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
