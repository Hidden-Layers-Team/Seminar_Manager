
import 'package:app/wedgit/origenalbutton.dart';
import 'package:flutter/material.dart';
// ignore: use_key_in_widget_constructors, must_be_immutable
class FormPage extends StatelessWidget {
  late String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                              labelText: 'Presenter Name',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Presenter Name is Required';
                              }
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.title,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Type of Seminar',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Type is Required';
                              }
                            }),
                        const SizedBox(
                          height: 10,
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.subject,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Subject of Seminar',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return ' Email is Required';
                              }
                            }),
                        const SizedBox(height: 10,),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.access_time_rounded,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Time',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Type is Required';
                              }
                            }),

                        const SizedBox(height: 10,),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.place_outlined,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'place',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Type is Required';
                              }
                            }),
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
                  left: 30, right: 30, bottom: 10, top: 20),
              child: OriginalButton(
                text: 'POST',
                onPressed: () {
                  Navigator.of(context).pushNamed('icon_button');
                },
                textColor: Colors.white,
                bgColor: Colors.deepPurpleAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 10, top: 20),
              child: OriginalButton(
                text: 'CANCEL',
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
