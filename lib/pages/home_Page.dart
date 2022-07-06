import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:financy/pagefiles/homepage_welcome.dart';
import 'package:financy/pagefiles/homepage_balance.dart';
import 'package:financy/pagefiles/homepage_transaction.dart';
import 'package:financy/pagefiles/homepage_activitySlot.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = 'Lou';
  double balance = 1234.00;
  String valueChoosen;
  List listitems = [
    'Today',
    'This Week',
    'This Month',
    'This Year',
    'Lifetime'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeProfile(size: size, username: username),
              BalancePart(size: size, balance: balance),
              TransactionOptions(),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 25),
                    color: Colors.white,
                    child: Text(
                      'Your Last Activity',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 20),
                    child: DropdownButton(
                        hint: Text('Choose'),
                        icon: Icon(Icons.list_outlined),
                        value: valueChoosen,
                        items: listitems.map((valueItem) {
                          return DropdownMenuItem(
                            child: Text(valueItem),
                            value: valueItem,
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            valueChoosen = newValue;
                          });
                        }),
                  )
                ],
              ),
              AllActivityCart(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
