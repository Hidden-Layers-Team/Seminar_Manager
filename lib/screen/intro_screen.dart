import 'package:app/wedgit/origenalbutton.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // ignore: prefer_const_constructors
                SizedBox(),
                Image.asset('assets/image/logo.png'),
              const SizedBox(height: 20),
              OriginalButton(
                text: 'Login',
                onPressed: ()=> Navigator.of(context).pushNamed('login'),
                textColor: Colors.deepPurpleAccent,
                bgColor: Colors.white,
              ),

                  OriginalButton(
                    text: 'Sing up',
                    onPressed: ()=> Navigator.of(context).pushNamed('signup'),
                    textColor: Colors.white,
                    bgColor: Colors.deepPurpleAccent,
                  ),
                 const SizedBox(height: 6),

              ]),
        ),
      ),
      
    );
  }
}
