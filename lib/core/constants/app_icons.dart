// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PageIcons {
  static Icon DefaultCalculate(int Index) => Icon(
        Icons.calculate_outlined,
        color: Index == 0 ? SameColors.operatorBtnColor : Colors.grey,
      );

  static Icon Menu(int Index) => Icon(
        Icons.space_dashboard_rounded,
        color: Index == 1 ? SameColors.operatorBtnColor : Colors.grey,
      );
  static Icon MenuEconomy(int Index) => Icon(
        Icons.request_page_outlined,
        color: Index == 2 ? SameColors.operatorBtnColor : Colors.grey,
      );

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

  static List<Icon> pageIconMenuList = const [
    Age,
    Area,
    BMI,
    Data,
    Date,
    Discount,
    Lenght,
    Mass,
    NumeralSystem,
    Speed,
    Temperature,
    Time,
    Volume
  ];
  static List<Icon> pageIconMenuEconomyList = const [Currency, Investment, Loan];
}
