import 'package:aam_travel_ui/pages/bookHotelPage.dart';
import 'package:flutter/material.dart';

class HotelInfo extends StatelessWidget {
  final String name, image;
  final double rating;
  final int price;

  const HotelInfo(
      {super.key,
      required this.name,
      required this.image,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => bookhotelPage(
                name: name, image: image, rating: rating, price: price),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10, right: 20, left: 20),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  spreadRadius: 10,
                  offset: Offset(5, 10))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _hotelImage(context),
            _hotelInfo(),
            _hotelRaiting(),
          ],
        ),
      ),
    );
  }

  Widget _hotelImage(BuildContext context) {
    double size = MediaQuery.of(context).size.height * 0.13;
    return SizedBox(
        height: size,
        width: size,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ));
  }

  Widget _hotelInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Text(
          "From \$$price",
          style: TextStyle(
              color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w300),
        )
      ],
    );
  }

  Widget _hotelRaiting() {
    return Row(
      children: [
        Text(
          rating.toStringAsFixed(1),
          style: TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Icon(
          Icons.star,
          size: 15,
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}
