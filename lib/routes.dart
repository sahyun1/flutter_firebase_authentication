import 'package:flutter/widgets.dart';
import 'package:flutter_firebase_authentication/screens/forgot_password_screen.dart/forgot_password_screen.dart';
import 'package:flutter_firebase_authentication/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.ROUTE_NAME: (ctx) => SignInScreen(),
  ForgotPasswordScreen.ROUTE_NAME: (ctx) => ForgotPasswordScreen()
};
