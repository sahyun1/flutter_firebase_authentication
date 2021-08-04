import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final IconData icon;
  final VoidCallback press;

  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(left: 3, top: 2),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          // color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Center(child: Icon(icon)),
      ),
    );
  }
}
