import 'package:flutter/material.dart';

class BalancePart extends StatelessWidget {
  const BalancePart({
    @required this.size,
    @required this.balance,
  });
  final Size size;
  final double balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 1,
      margin: EdgeInsets.only(top: size.height * 0.03, left: 25, right: 25),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 20),
            child: Image.asset('images/currency.png'),
          ),
          Container(
            padding: EdgeInsets.only(top: size.height * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your balance',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: size.height * 0.004,
                ),
                Row(
                  children: [
                    Text(
                      '\$$balance',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.asset('images/wallet.png'),
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: size.width * 0.15, top: size.height * 0.12),
            child: Column(
              children: [
                GestureDetector(
                  onTap: null,
                  child: Text(
                    '>',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.031,
                ),
                GestureDetector(
                  onTap: null,
                  child: Text(
                    '>',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
