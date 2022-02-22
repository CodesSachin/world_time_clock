
import 'package:world_time_clock/Presentation_Layer/forgot_password/forgot_password.dart';
import 'package:world_time_clock/Presentation_Layer/login/login.dart';
import 'package:world_time_clock/Presentation_Layer/main/main_view.dart';
import 'package:world_time_clock/Presentation_Layer/onboarding/onboarding.dart';
import 'package:world_time_clock/Presentation_Layer/resources/strings_manager.dart';
import 'package:world_time_clock/Presentation_Layer/register/register.dart';
import 'package:world_time_clock/Presentation_Layer/splash/splash.dart';
import 'package:world_time_clock/Presentation_Layer/store_details/store_details.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            // title: Text("No Route Found"),
            title: Text(AppStrings.noRouteFound),
          ),
          body: Center(child: Text("No Route Found")),
        ));
  }
}