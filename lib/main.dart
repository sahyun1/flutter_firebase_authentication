import 'package:flutter/material.dart';
import 'package:flutter_firebase_authentication/routes.dart';
import 'package:flutter_firebase_authentication/screens/sign_in/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Authentication Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SignInScreen.ROUTE_NAME,
      routes: routes,
    );
  }
}
