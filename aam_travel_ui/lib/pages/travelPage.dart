import 'package:aam_travel_ui/widgets/hotel_info.dart';
import 'package:flutter/material.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _background(context),
        _locationList(context),
      ],
    );
  }

  Widget _background(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/thialand.jpg"),
              fit: BoxFit.fill)),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Thailand Islands",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "15 June - 18 June",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _locationList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.58,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: ListView(
          children: [
            HotelInfo(
                name: "Hilton Thai",
                image: "assets/images/Hilton-Thai.jpg",
                rating: 3.0,
                price: 250),
            HotelInfo(
                name: "Four Seasons",
                image: "assets/images/Four-Seasons.jpg",
                rating: 4.0,
                price: 300),
            HotelInfo(
                name: "Marriot",
                image: "assets/images/marriot.jpg",
                rating: 4.2,
                price: 380),
            HotelInfo(
                name: "Ritz Carlton",
                image: "assets/images/Ritz-Carlton.jpg",
                rating: 4.5,
                price: 400),
          ],
        ),
      ),
    );
  }
}
