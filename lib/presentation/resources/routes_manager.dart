import 'package:flutter/material.dart';
import 'package:flutter_advance/presentation/forgot_password/forget_password_page.dart';
import 'package:flutter_advance/presentation/home/home_page.dart';
import 'package:flutter_advance/presentation/login/login_page.dart';
import 'package:flutter_advance/presentation/onboarding/onboarding_page.dart';
import 'package:flutter_advance/presentation/register/register_page.dart';
import 'package:flutter_advance/presentation/resources/strings_manager.dart';
import 'package:flutter_advance/presentation/splash/splash_page.dart';
import 'package:flutter_advance/presentation/store_details/store_details_page.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String fogotPasswordRoute = "/forgotPassword";
  static const String homeRoute = "/home";
  static const String registerRoute = "/register";
  static const String storeDetailsRoute = "/storeDeatials";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case Routes.fogotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsPage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text("Opps! ${AppStrings.noRouteFound}!"),
              ),
            ));
  }
}
