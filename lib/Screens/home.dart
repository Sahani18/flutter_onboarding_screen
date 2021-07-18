import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'dashboard.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/bind.png"),
          title: 'BINDING POSE',
          body:
              'Binding yoga poses have the benefit of massaging the internal organs and detoxifying your body. ',
          footer: Text("@TheFlutterCommunity")),
      PageViewModel(
          image: Image.asset("assets/balancing.png"),
          title: 'BALANCING POSE',
          body:
              'Balancing poses in yoga positively impact both our physical and mental health.',
          footer: Text("@TheFlutterCommunity")),
      PageViewModel(
          image: Image.asset("assets/seat.png"),
          title: 'SEATED POSE',
          body:
              'The ability to bend, twist, stretch, and move freely is important for more than doing yoga.',
          footer: Text("@TheFlutterCommunity")),
      PageViewModel(
          image: Image.asset("assets/rest.png"),
          title: 'RESTORATIVE POSE',
          body:
              'Restorative yoga is a passive, meditative form of yoga that allows you to release tension and stress in your body by holding poses for 5 minutes',
          footer: Text("@TheFlutterCommunity")),
      PageViewModel(
          image: Image.asset("assets/balancing.png"),
          title: 'STANDING POSE',
          body:
              'Standing yoga postures require both strength and flexibility, and categorize most of the advanced asanas.',
          footer: Text("@TheFlutterCommunity")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: width,
            color: Colors.white,
            child: Image.asset(
              "assets/ui.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
              height: height-150,
              child: _buildBackgroundUI()),
        ],
      ),
    );
  }

  _buildBackgroundUI() {
    return IntroductionScreen(
      done: CustomText(text:
        'Done',
        color: Colors.green,


      ),
      onDone: _navigateToHomeScreen,
      pages: getPages(),
      showNextButton: true,
      skip: Text('Skip'),
      onSkip: _navigateToHomeScreen,
      showSkipButton: true,
      next: Text('Next'),
      globalBackgroundColor: Colors.white,
    );
  }
  _navigateToHomeScreen(){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (builder)=>Dashboard()));

  }
}

class CustomText extends StatelessWidget {
  String text;
  String fontFamily;
  double fontSize;
  Color color;

  FontWeight fontWeight;

  CustomText({@required this.text, this.color,this.fontFamily='Roboto', this.fontSize=16, this.fontWeight=FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}
