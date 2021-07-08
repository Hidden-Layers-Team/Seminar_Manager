import 'package:flutter/material.dart';
import 'package:app/wedgit/auth_form.dart';
enum AuthType {login,register}
class Login extends StatelessWidget {
  final AuthType authType;
  // ignore: sort_constructors_first
  const Login({Key? key, required this.authType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                ),
                Column(
                  children:<Widget> [
                    // ignore: prefer_const_constructors
                    SizedBox(height: 40),
                    // ignore: prefer_const_constructors
                    Text(

                      'Welcome back',

                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Image.asset(
                      'assets/image/logo.png',
                      height: 280,
                    ),
                  ],
                ),
              ],
            ),

            AuthForm(authType: authType),
          ],
        ),
      ),
    );
  }
}
