import 'package:flutter/material.dart';
import 'package:financy/pagefiles/intropage_slider.dart';
import 'home_Page.dart';
class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: size.height * 1,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: size.height * 0.15,
                child: Texts(
                  text: 'Financy',
                ),
              ),
              HomePage_Slider(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Texts(text: 'Save money'),
              SizedBox(
                height: size.height * 0.03,
              ),
              Texts2(
                text: 'Have all your finances',
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              Texts2(
                text: 'in one place!',
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return HomePage();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Texts2 extends StatelessWidget {
  Texts2({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w200,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  Texts({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.none),
      ),
    );
  }
}
