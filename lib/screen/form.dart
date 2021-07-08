
import 'package:app/wedgit/origenalbutton.dart';
import 'package:flutter/material.dart';
import 'drowp.dart';

// ignore: must_be_immutable
class Requist extends StatelessWidget {
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
                              labelText: 'Full Name',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Full Name is Required';
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
                              labelText: 'Name of Seminar',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Type is Required';
                              }
                            }),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.subject,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Description of Seminar',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return ' Email is Required';
                              }
                            }),
                        const SizedBox(height: 10),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.phone,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Phone Number',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Number is Required';
                              }
                            }),
                        const SizedBox(height: 10),
                        TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.people_outline,
                                color: Colors.deepPurpleAccent,
                              ),
                              labelText: 'Number of Audience',
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Number is Required';
                              }
                            }),
                        const SizedBox( height: 12),
                        DropDownDemo<String>(
                          title: 'Type of Seminar',
                          // ignore: prefer_const_literals_to_create_immutables, always_specify_types
                          values: [
                            SDropDownItem('Scientific Seminar', 's'),
                            SDropDownItem('Culture Seminar', 'n'),
                            SDropDownItem('Thesis', 'i'),
                            SDropDownItem('Discussion', 'n'),
                            SDropDownItem('Workshop', 'i'),
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
                  left: 30, right: 30, bottom: 10, top: 20),
              child: OriginalButton(
                text: 'Send Request',
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
