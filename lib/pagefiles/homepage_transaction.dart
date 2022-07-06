import 'package:flutter/material.dart';
import 'package:financy/pages/transactions_Page.dart';
class TransactionOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Transaction(
            routePageName: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Transactions();
              }));
            },
            piclocation: 'images/principalbutton2.png',
          ),
          Transaction(
            piclocation: 'images/principalbutton1.png',
          ),
          Transaction(
            piclocation: 'images/principalbutton3.png',
          ),
        ],
      ),
    );
  }
}


class Transaction extends StatelessWidget {
  Transaction({this.piclocation,this.routePageName});

  final String piclocation;final VoidCallback routePageName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: routePageName,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Image.asset(piclocation),
      ),
    );
  }
}