import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdownbutton.dart' show CustomDropDownWidget;

class HomePage extends StatelessWidget{
  late double _deviceHeight, _deviceWidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight =  MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_TitleText(),_BookRideWidget()],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _astroimagewidget(),
          )],
          )
        ),
      ),
      );
  }

  Widget _TitleText(){
    return Text("#Go Moon",style: TextStyle(fontSize: 65, color: Colors.white, fontWeight: FontWeight.w700),);
  }

  Widget _astroimagewidget(){
    return Container(
      height: _deviceHeight * 0.65,
      width: _deviceWidth * 0.65,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/astro_moon.png"),
          fit: BoxFit.fill,
        )
        )
      );
  }
  Widget _destinationWidget(){
    return CustomDropDownWidget(
      values: ["Karachi Station", "Lahore Station"], 
      width: _deviceWidth);
  }
  Widget _travellersIndoWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownWidget(
          values: ["1", "2","3"], width: _deviceWidth * 0.43),
        CustomDropDownWidget(
          values: ["Economy","Buisness","Fist"], width: _deviceWidth * 0.42)
      ],
    );
  }
  Widget _BookRideWidget(){
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_destinationWidget(),_travellersIndoWidget(),_RideBookWidget()],),
    );
  }

  Widget _RideBookWidget(){
    return Container(
      width: _deviceWidth,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),),
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      child: MaterialButton(onPressed: () {}, child:  const Text("Book Ride!", style: TextStyle(color: Colors.black),),),
    );
  }
}
