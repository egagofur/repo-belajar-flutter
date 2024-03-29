import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({super.key, required this.place, required});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
          children: (<Widget>[
        Stack(
          children: [
            Image.asset(place.imageAsset),
            SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        ),
                        const FavoriteButton()
                      ],
                    ))),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: Text(
            place.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      place.openDays,
                      style: informationTextStyle,
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.access_time),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      place.openTime,
                      style: informationTextStyle,
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.monetization_on),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      place.ticketPrice,
                      style: informationTextStyle,
                    ),
                  ],
                )
              ]),
        ),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            )),
        SizedBox(
          height: 150,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: place.imageUrls.map((url) {
                return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url))));
              }).toList()),
        )
      ])),
    )));
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red));
  }
}
