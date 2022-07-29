import 'package:get/get.dart';
import 'package:rica_app/intro_slider.dart';
import 'package:rica_app/login.dart';
import 'package:rica_app/registerPage.dart';

class RouteHelper {
  static const String home = '/intro_slider';
  static const String login = '/login';
  static const String register = '/registerPage';


  static String getHome() => home;
  static String getLogin() => login;
  static String getRegister() => register;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const IntroSliderPage()),
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: register, page: () => const RegisterPage()),
    //get page for popular food
    
  ];
}
