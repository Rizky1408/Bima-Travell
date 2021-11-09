import 'package:bimawisataapp/utils/detail.dart';
import 'package:bimawisataapp/utils/hotels.dart';
import 'package:bimawisataapp/utils/place.dart';
import 'package:flutter/material.dart';
import 'Animation/animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  listHotel() async {
    for (var i = 0; i < hotels.length; i++) {
      final hotelnya = hotels[i];
      final String image = hotelnya['img'];
      hotel.add(Container(
        child: Row(
          children: <Widget>[
            Hero(
                tag: hotelnya['name'],
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => DetailHotels(
                            name: hotelnya['name'], image: image))),
                    child: makeItem(image: image, title: hotelnya['name']),
                  ),
                ))
          ],
        ),
      ));
    }
  }

  listTempat() async {
    for (var i = 0; i < places.length; i++) {
      final tempatNya = places[i];
      final String gambar = tempatNya['image'];
      final String detail = tempatNya['summary'];
      tempat.add(Container(
        child: Row(
          children: <Widget>[
            Hero(
              tag: tempatNya['title'],
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => DetailPlace(
                      nama: tempatNya['title'],
                      gambar: gambar,
                      details: detail,
                    ),
                  )),
                  child: makeItem(image: gambar, title: tempatNya['title']),
                ),
              ),
            )
          ],
        ),
      ));
      const SizedBox(
        height: 80,
      );
    }
  }

  @override
  void initState() {
    listTempat();
    listHotel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pulau_kelapa.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const FadeAnimation(
                        1,
                        Text(
                          "Mari Berselancar di Bima",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                        1.3,
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                                hintText: "Search for cities, places ..."),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const FadeAnimation(
                      1,
                      Text(
                        "Best Destination",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      SizedBox(
                        height: 200,
                        child: ListView(
                            scrollDirection: Axis.horizontal, children: tempat),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const FadeAnimation(
                      1,
                      Text(
                        "Best Hotels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: hotel,
                        ),
                      )),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
