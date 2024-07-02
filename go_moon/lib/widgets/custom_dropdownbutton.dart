import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatelessWidget{
  List <String> values;
  double width;
  CustomDropDownWidget({required this.values , required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(color: Color.fromRGBO(53, 53, 53, 1.0),
      borderRadius: BorderRadius.circular(10,),),
      child: DropdownButton(
        underline: Container(),
        onChanged: (_){},
        value: values.first,
        items: values.map((e){
      return DropdownMenuItem(
        child: Text(e),
        value: e,
      );
    },
    ).toList(),
    dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),style: TextStyle(color: Colors.white),
      ),
    ); 
  }
}