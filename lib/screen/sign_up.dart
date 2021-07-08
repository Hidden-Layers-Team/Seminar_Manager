import 'package:app/screen/drowp.dart';
import 'package:app/wedgit/origenalbutton.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class SignUp extends StatelessWidget {
  late String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(88),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF614A9E), Color(0xFF884EA0)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Icon(
                    Icons.account_circle,
                    size: 90,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: <Widget>[
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 10),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'First Name',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'First Name is Required';
                              }
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Last Name',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Last Name is Required';
                              }
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Enter Your Email',
                              hintText: 'test123@gmail.com',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return ' Email is Required';
                              }
                            }),
                        const SizedBox(height: 12),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.deepPurpleAccent,
                            ),
                            labelText: 'Enter Your Password',
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.perm_identity,
                              color: Colors.deepPurpleAccent,
                            ),
                            labelText: 'ID_Card',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(height: 12),
                        DropDownDemo<String>(
                          title: 'Chose your department',
                          // ignore: prefer_const_literals_to_create_immutables, always_specify_types
                          values: [
                            const SDropDownItem('Software', 's'),
                            const SDropDownItem('Network', 'n'),
                            const SDropDownItem('Security', 'i'),
                          ],

                          onChanged: (value) {
                            print(value.value);
                          },
                        ),
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        DropDownDemo<String>(
                          title: 'Academic Degree',

                          // ignore: always_specify_types, prefer_const_literals_to_create_immutables
                          values: [
                            SDropDownItem('Primary', 'r'),
                            SDropDownItem('Graduate', 'f'),
                            SDropDownItem('Other', 'a'),
                          ],
                          onChanged: (value) {
                            print(value.value);
                          },
                        ),
                        const SizedBox(height: 12),
                        DropDownDemo<String>(
                          title: 'Chose your stage',
                          // ignore: prefer_const_literals_to_create_immutables, always_specify_types
                          values: [
                            const SDropDownItem('First Stage', 's'),
                            const SDropDownItem('Second Stage', 'n'),
                            const SDropDownItem('Third Stage', 'i'),
                            const SDropDownItem('Furth Stage', 'i'),
                          ],

                          onChanged: (value) {
                            print(value.value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28, right: 28, bottom: 10, top: 0.0),
              child: OriginalButton(
                text: 'SignUp',
                onPressed: () {
                  Navigator.of(context).pushNamed('icon_button');
                },
                textColor: Colors.white,
                bgColor: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
