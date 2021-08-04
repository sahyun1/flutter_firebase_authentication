import 'package:flutter/material.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?  ",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "Sign Up",
          style: TextStyle(color: Colors.orange, fontSize: 16),
        )
      ],
    );
  }
}
