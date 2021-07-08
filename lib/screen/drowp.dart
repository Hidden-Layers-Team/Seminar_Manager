import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DropDownDemo<T> extends StatefulWidget {
  final String title;
  final List<SDropDownItem<T>> values;
  final ValueChanged<SDropDownItem<T>> onChanged;

  const DropDownDemo({
    Key? key,
    required this.title,
    required this.values,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DropDownDemoState<T> createState() => _DropDownDemoState<T>();
}

class _DropDownDemoState<T> extends State<DropDownDemo<T>> {
  SDropDownItem<T>? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color:  const Color(0xfff2f9fe),
        borderRadius: BorderRadius.circular(25),
      ),


      padding: const EdgeInsets.only(left:50, right: 17, bottom: 10, top:0.0),
      margin: const EdgeInsets.only(left: 20,right: 10,top: 10,bottom: 0.0),
      child: DropdownButton<SDropDownItem<T>>(
        value: _chosenValue,
        //elevation: 5,
        style: const TextStyle(color: Colors.black),

    items: List<DropdownMenuItem<SDropDownItem<T>>>.generate(
          widget.values.length,
          (index) => DropdownMenuItem(
            child: Text(widget.values[index].title),
            value: widget.values[index],
          ),
        ),
        hint: Text(
          _chosenValue?.title ?? widget.title,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
        ),
        onChanged: (SDropDownItem<T>? value) {
          if (value != null) {
            setState(() => _chosenValue = value);
            widget.onChanged(value);
          }
        },
      ),
    );
  }
}

class SDropDownItem<T> {
  final String title;
  final T value;

  const SDropDownItem(this.title, this.value);
}
