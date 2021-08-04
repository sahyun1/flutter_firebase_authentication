import 'package:flutter/material.dart';
import 'package:flutter_firebase_authentication/screens/forgot_password_screen.dart/forgot_password_screen.dart';

class SignInForm extends StatefulWidget {
  // const SignInForm({ Key? key }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  var rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildInputField(
              labelText: "Email",
              hintText: "Enter your email",
              icon: Icons.email_outlined),
          SizedBox(
            height: 30,
          ),
          buildInputField(
              labelText: "Password",
              hintText: "Enter your password",
              icon: Icons.lock_outline,
              isForPassword: true),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print('$email, $password');
                }
              },
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 18),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white, // foreground
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .pushNamed(ForgotPasswordScreen.ROUTE_NAME),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  TextFormField buildInputField({
    required String labelText,
    required String hintText,
    required IconData icon,
    bool isForPassword = false,
  }) {
    return TextFormField(
      keyboardType: isForPassword
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      obscureText: isForPassword,
      onSaved: (newVal) => isForPassword ? password = newVal! : email = newVal!,
      validator: (value) {
        if (value!.isEmpty) {
          return isForPassword ? 'Please enter password' : 'Please enter email';
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: Icon(
            icon,
            color: Color(0xFF757575),
          )),
    );
  }
}