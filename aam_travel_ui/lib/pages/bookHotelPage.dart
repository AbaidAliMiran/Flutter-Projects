import 'package:flutter/material.dart';

class bookhotelPage extends StatelessWidget {
  final String name;
  final String image;
  final double rating;
  final int price;

  const bookhotelPage({
    super.key,
    required this.name,
    required this.image,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              _hotelImage(context),
              Positioned(
                top: 40,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          _hotelDetails(context),
          _bookButton(context),
        ],
      ),
    );
  }

  Widget _hotelImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _hotelDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "From \$$price per night",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                rating.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.deepPurple,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bookButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Booking Confirmed"),
              content: Text("You have successfully booked the hotel."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text("OK"),
                ),
              ],
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          "Book Now",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
