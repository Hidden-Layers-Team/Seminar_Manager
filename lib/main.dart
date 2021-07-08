import 'package:app/screen/add_post.dart';
import 'package:app/screen/form.dart';
import 'package:app/screen/home_body.dart';
import 'package:app/screen/intro_screen.dart';
import 'package:flutter/material.dart';

import 'screen/login.dart';
import 'screen/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,

          fillColor: const Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home:
      IntroScreen(),
      routes: <String, WidgetBuilder>{
        'login': (BuildContext context) =>Login(authType: AuthType.login),
        'signup':(BuildContext context)=>SignUp(),
        'icon_button':(BuildContext context)=>HomeBody(),
        'send':(BuildContext context)=>Requist(),
        'post':(BuildContext context)=>FormPage(),
      },
    );
  }
}
