//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:<Widget> [
          AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 0,
            title: const Text(
              'WELCOME TO SEMINAR',
              style: TextStyle(fontSize: 15),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('post');
                  }),
              IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('send');
                  })
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Stack(

              children: <Widget> [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context,index) => ProductCard(),
                 // itemIndex: index,
                //  product: products(index),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      height: 190.0,
      child: Stack(
        children: [
          Container(
            height: 166.0,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.deepPurple,
            ),
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 160.0,
              width: 200.0,
              child: Image.asset('assets/image/logo.png'),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 170, top: 15, bottom: 0, right:2),
            child: Text(
              'Seminar about technology',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
              ),
            ),


          ),
          const Padding(
            padding:
            EdgeInsets.only(left: 170, top:52, bottom: 0, right: 5),
            child: Text(
              'Presented by Dr.Ahmed Salim',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
              ),
            ),


          ),


          const Padding(
            padding:
            EdgeInsets.only(left: 170, top:80, bottom: 0, right: 5),
            child: Text(
              'Time:- 9:00 am',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),


          ),
          const Padding(
            padding:
            EdgeInsets.only(left: 170, top:100, bottom: 0, right: 5),
            child: Text(
              'place :- Room 6',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),


          ),


        ],
      ),
    );
  }
}
