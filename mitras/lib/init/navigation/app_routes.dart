// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const INITIAL = _Paths.SPLASH;
}

abstract class _Paths {
  static const SPLASH = "/splash";
  static const LOGIN = '/login';
  static const String ON_BOARD_PAGE = "/onboard";
  static const String MAIN_PAGE = "/main_page";
  static const String HOME_PAGE = "/home_page";
  static const String HOME_PAGE_DETAIL = "/home_page_detail";
}
