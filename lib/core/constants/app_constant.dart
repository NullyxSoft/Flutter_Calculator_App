// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RoutePage {
  static const String RoutePath = 'assets/lang';
  static const String InitialRoute = '/';
  static const String Age = 'age';
  static const String Area = 'area';
  static const String BMI = 'bmi';
  static const String Data = 'data';
  static const String Date = 'date';
  static const String Discount = 'discount';
  static const String Lenght = 'lenght';
  static const String Mass = 'mass';
  static const String NumeralSystem = 'numarelSystem';
  static const String Speed = 'speed';
  static const String Temperature = 'tempereture';
  static const String Time = 'time';
  static const String Volume = 'volume';
  static const String Currency = 'currency';
  static const String Investment = 'investment';
  static const String Loan = 'loan';
}

class PageIcons {
  static const Icon Menu = Icon(Icons.space_dashboard_rounded);
  static const Icon MenuEconomy = Icon(Icons.request_page_outlined);
  static const Icon DefaultCalculate = Icon(Icons.calculate_outlined);
  static const Icon Age = Icon(Icons.cake_outlined);
  static const Icon Area = Icon(Icons.crop_square);
  static const Icon BMI = Icon(Icons.monitor_weight_outlined);
  static const Icon Data = Icon(Icons.storage);
  static const Icon Date = Icon(Icons.date_range_outlined);
  static const Icon Discount = Icon(Icons.discount);
  static const Icon Lenght = Icon(Icons.unfold_more_double_rounded);
  static const Icon Mass = Icon(Icons.scale_outlined);
  static const Icon NumeralSystem = Icon(Icons.code);
  static const Icon Speed = Icon(Icons.speed_outlined);
  static const Icon Temperature = Icon(Icons.thermostat_outlined);
  static const Icon Time = Icon(Icons.access_time);
  static const Icon Volume = Icon(Icons.indeterminate_check_box_outlined);
  static const Icon Currency = Icon(Icons.currency_exchange_outlined);
  static const Icon Investment = Icon(Icons.line_axis_sharp);
  static const Icon Loan = Icon(Icons.monetization_on_outlined);

  static List<Icon> pageIconMenuList = const [Age, Area, BMI, Data, Date, Discount, Lenght, Mass, NumeralSystem, Speed, Temperature, Time, Volume];
  static List<Icon> pageIconMenuEconomyList = const [Currency, Investment, Loan];
}

class PageTexts {
  static String Age = RoutePage.Age.tr();
  static String Area = RoutePage.Area.tr();
  static String BMI = RoutePage.BMI.tr();
  static String Data = RoutePage.Data.tr();
  static String Date = RoutePage.Date.tr();
  static String Discount = RoutePage.Discount.tr();
  static String Lenght = RoutePage.Lenght.tr();
  static String Mass = RoutePage.Mass.tr();
  static String NumeralSystem = RoutePage.NumeralSystem.tr();
  static String Speed = RoutePage.Speed.tr();
  static String Temperature = RoutePage.Temperature.tr();
  static String Time = RoutePage.Time.tr();
  static String Volume = RoutePage.Volume.tr();
  static String Currency = RoutePage.Currency.tr();
  static String Investment = RoutePage.Investment.tr();
  static String Loan = RoutePage.Loan.tr();

  static List<String> pageTextsMenuList = [Age, Area, BMI, Data, Date, Discount, Lenght, Mass, NumeralSystem, Speed, Temperature, Time, Volume];
  static List<String> pageTextsMenuEconomyList = [Currency, Investment, Loan];
}
