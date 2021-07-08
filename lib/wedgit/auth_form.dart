import 'package:app/screen/login.dart';
import 'package:app/wedgit/origenalbutton.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;

  // ignore: sort_constructors_first
  const AuthForm({Key? key, required this.authType}) : super(key: key);


  @override
  AuthFormState createState() => AuthFormState();
}

class AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children :<Widget> [
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget> [
                const SizedBox(height:16),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_outlined,color: Colors.deepPurpleAccent,),
                    labelText: 'UserName',
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email,color: Colors.deepPurpleAccent,),
                    labelText: 'Enter Your Email',
                    hintText:'test123@gmail.com',
                  ),
                ),

                const SizedBox( height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock,color: Colors.deepPurpleAccent,),
                    labelText: 'Enter Your Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                OriginalButton(
                    text: widget.authType == AuthType.login ?' Login':'iconbutton',
                    onPressed: (){
                      if(widget.authType==AuthType.login)
                        Navigator.of(context).pushNamed('icon_button');
                      else
                        Navigator.of(context).pushNamed('login');
                    },
                  textColor:Colors.white,
                  bgColor: Colors.deepPurpleAccent,
                ),

                const SizedBox(height: 5),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('signup');
                  },
                  child:Text(
                    widget.authType == AuthType.login ? 'Don\'t have an account?':'You have an account?',
                    style: const TextStyle(
                    color:Colors.black54,
                    fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
