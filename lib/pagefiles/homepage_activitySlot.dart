import 'package:flutter/material.dart';

class AllActivityCart extends StatelessWidget {
  const AllActivityCart({
    @required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActivityCarts(
          size: size,
          dollarused: '5556.45',
          activityname: 'Shopping',
          activityiconposition: 'images/shopping.png',
        ),
        ActivityCarts(
          size: size,
          dollarused: '2156.73',
          activityname: 'Food',
          activityiconposition: 'images/food.png',
        ),
        ActivityCarts(
          size: size,
          dollarused: '5546.68',
          activityname: 'Shopping',
          activityiconposition: 'images/shopping.png',
        ),
        ActivityCarts(
          size: size,
          dollarused: '3556.71',
          activityname: 'Food',
          activityiconposition: 'images/food.png',
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ActivityCarts extends StatelessWidget {
  const ActivityCarts(
      {@required this.size,
      this.activityiconposition,
      this.activityname,
      this.dollarused});

  final Size size;
  final String activityname, activityiconposition, dollarused;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: size.width * 1,
      margin: EdgeInsets.only(left: 25, right: 25, top: 10),
      decoration: BoxDecoration(
          color: Color(0xFFF4F7FA),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
      child: Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: Row(
          children: [
            Image.asset(
              activityiconposition,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              activityname,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            Spacer(),
            Text(
              '\$$dollarused',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
