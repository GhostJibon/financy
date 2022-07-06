import 'package:flutter/material.dart';

class WelcomeProfile extends StatelessWidget {
  const WelcomeProfile({
    @required this.size,
    @required this.username,
  });

  final Size size;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.17,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          color: Color(0xFFD0F1EB),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: size.width * 0.05, top: size.height * 0.035),
            child: CircleAvatar(
              radius: size.height * 0.04,
              backgroundImage: ExactAssetImage('images/circleavatar.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: size.height * 0.065),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi\,$username',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: size.height * 0.033,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: size.height * 0.022,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Text(
              '\...',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: size.height * 0.022,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
