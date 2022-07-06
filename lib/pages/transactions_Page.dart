import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:financy/pagefiles/transactionPage_NewAccountOption.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black54, //change your color here
        ),
        title: Center(
          child: Text(
            'Transactions',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
              backgroundImage: ExactAssetImage('images/circleavatar.png'),
            ),
            onPressed: () {
              // do something
            },
          ),
          SizedBox(width: 3),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewAccountOption(),
            Contacts(),
          ],
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 24),
      height: 450,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 4,
              offset: Offset(0, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleContacts(
              contactName: 'Deborah Sanchez',
              imageLocation: 'images/contact1.png',
            ),
            SingleContacts(
              contactName: 'Melanie Ward',
              imageLocation: 'images/contact2.png',
            ),
            SingleContacts(
              contactName: 'Adrienne Huffman',
              imageLocation: 'images/contact3.png',
            ),
            SingleContacts(
              contactName: 'Emily Ibarra',
              imageLocation: 'images/contact4.png',
            ),
            SingleContacts(
              contactName: 'Evan Harper',
              imageLocation: 'images/contact5.png',
            ),
            SingleContacts(
              contactName: 'Daniel Ferrell',
              imageLocation: 'images/circleavatar.png',
            )
          ],
        ),
      ),
    );
  }
}

class SingleContacts extends StatelessWidget {
  const SingleContacts({this.contactName, this.imageLocation});

  final String imageLocation, contactName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19.5, bottom: 5, right: 19.5, top: 5),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: ExactAssetImage(imageLocation),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              contactName,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
    );
  }
}
