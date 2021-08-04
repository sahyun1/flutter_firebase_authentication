import 'package:flutter/material.dart';
import 'package:flutter_firebase_authentication/components/no_account.dart';
import 'package:flutter_firebase_authentication/components/social_cart.dart';
import '../../size_config.dart';
import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  // const SignInScreen({ Key? key }) : super(key: key);
  static const ROUTE_NAME = '/sign-in';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight! * 0.03),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign in with your email and password \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.08),
                  SignInForm(),
                  SizedBox(height: SizeConfig.screenHeight! * 0.07),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: Icons.g_mobiledata,
                        press: () {},
                      ),
                      SocialCard(
                        icon: Icons.facebook_outlined,
                        press: () {},
                      ),
                      SocialCard(
                        icon: Icons.facebook_outlined,
                        press: () {},
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  NoAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
