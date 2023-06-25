// ignore_for_file: non_constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'app_routes.dart';

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

  static List<String> pageTextsMenuList = [
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
  static List<String> pageTextsMenuEconomyList = [Currency, Investment, Loan];

  static List<String> numButtons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
}
