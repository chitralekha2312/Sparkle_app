import 'package:flutter/material.dart';
import 'package:sparkle/components/roundbutton.dart';
import 'package:linkedin_login/linkedin_login.dart';
import 'package:sparkle/components/linkedin_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class LinkedInPage extends StatefulWidget {

  static const String id='LinkedIn Page';
  @override
  State createState() => _LinkedInPageState();
}

class _LinkedInPageState extends State<LinkedInPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1E33),
      appBar:  AppBar(
          backgroundColor: Color(0xFF111328),
          title: Text("⚡️Sparkle"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('#',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Vampiro',
                        color: Colors.white),
                  ),
                  RotateAnimatedTextKit(
                    text: ['Socialite'],
                    textStyle: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Vampiro',
                        color: Colors.white),
                    textAlign: TextAlign.start,
                    isRepeatingAnimation: false,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              LinkedInButtonStandardWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => LinkedInuser(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                iconHeight: 40,
                iconWeight: 40,
                textPadding: EdgeInsets.all(15),
              ),
              SizedBox(
                height: 30,
              ),
              LinkedInButtonStandardWidget(
                onTap: () {
                  setState(() {
                    user = null;
                    logoutUser = true;
                    Navigator.pop(context);
                  });
                },
                buttonText: 'Logout',
                iconHeight: 40,
                iconWeight: 40,
                textPadding: EdgeInsets.all(15),
              ),
            ]),
      ),
    );
  }
}
