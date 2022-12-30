import 'package:flutter/material.dart';

import '../presentation/screens/login_screen.dart';
import '../presentation/screens/otp_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {

    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute<LoginScreen>(
          builder: (_) => LoginScreen(),
        );
        break;

      case '/second':
        return MaterialPageRoute<OtpScreen>(
          builder: (_) => OtpScreen(
            mobileNo: '',
          ),
        );
        break;

      default:
        return null;
    }
  }
}
