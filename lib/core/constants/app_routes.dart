// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'dart:core';

class PageRoutes {
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

  static List<String> menuRoutesList = [
    PageRoutes.Age,
    PageRoutes.Area,
    PageRoutes.BMI,
    PageRoutes.Data,
    PageRoutes.Date,
    PageRoutes.Discount,
    PageRoutes.Lenght,
    PageRoutes.Mass,
    PageRoutes.NumeralSystem,
    PageRoutes.Speed,
    PageRoutes.Temperature,
    PageRoutes.Time,
    PageRoutes.Volume,
  ];
  static List<String> menuEcononmyRoutesList = [PageRoutes.Currency, PageRoutes.Investment, PageRoutes.Loan];
}
