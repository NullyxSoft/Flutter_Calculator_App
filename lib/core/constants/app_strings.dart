// ignore_for_file: non_constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'app_routes.dart';

class PageTexts {
  static String Age = PageRoutes.Age.tr();
  static String Area = PageRoutes.Area.tr();
  static String BMI = PageRoutes.BMI.tr();
  static String Data = PageRoutes.Data.tr();
  static String Date = PageRoutes.Date.tr();
  static String Discount = PageRoutes.Discount.tr();
  static String Lenght = PageRoutes.Lenght.tr();
  static String Mass = PageRoutes.Mass.tr();
  static String NumeralSystem = PageRoutes.NumeralSystem.tr();
  static String Speed = PageRoutes.Speed.tr();
  static String Temperature = PageRoutes.Temperature.tr();
  static String Time = PageRoutes.Time.tr();
  static String Volume = PageRoutes.Volume.tr();
  static String Currency = PageRoutes.Currency.tr();
  static String Investment = PageRoutes.Investment.tr();
  static String Loan = PageRoutes.Loan.tr();

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

  static List<String> defaultCalculateNumButtons = [
    'C',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    'ANS',
    '0',
    '.',
    '=',
  ];
  static List<String> CalculateNumButtonsType2 = [
    '7',
    '8',
    '9',
    '4',
    '5',
    '6',
    '1',
    '2',
    '3',
    '',
    '0',
    '.',
  ];
}
