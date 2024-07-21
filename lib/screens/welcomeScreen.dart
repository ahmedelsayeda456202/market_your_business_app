import 'dart:async';
import 'package:shoryanelhayat_user/models/mydonation.dart';
import 'package:shoryanelhayat_user/screens/my_donation_screen.dart';
import 'package:shoryanelhayat_user/screens/onboardScreen.dart';
import 'package:shoryanelhayat_user/screens/overview_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OrgOverviewScreen())));
//             builder: (BuildContext context) => MyDonationsScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF46A04F),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}