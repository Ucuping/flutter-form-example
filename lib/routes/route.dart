import 'package:flutter/material.dart';
import 'package:helloworld/screen/checkYourEmail.dart';
import 'package:helloworld/screen/forgotPassword.dart';
import 'package:helloworld/screen/resetPassword.dart';
import 'package:helloworld/screen/resetPasswordSuccessfull.dart';
import 'package:helloworld/screen/signIn.dart';
import 'package:helloworld/screen/signUp.dart';
import 'package:helloworld/screen/thankRegister.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignIn());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/forgot-password':
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case '/thank-register':
        return MaterialPageRoute(builder: (_) => ThankRegister());
      case '/check-your-email':
        return MaterialPageRoute(builder: (_) => CheckYourEmail());
      case '/reset-password':
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case '/reset-password-successfull':
        return MaterialPageRoute(builder: (_) => ResetPasswordSuccessfull());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          // backgroundColor: primaryColor,
        ),
        body: Center(
          child: Text(
            "Error Page",
          ),
        ),
      );
    });
  }
}
