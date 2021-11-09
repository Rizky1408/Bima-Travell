import 'package:flutter/material.dart';

class DetailPlace extends StatelessWidget {
  DetailPlace({this.nama, this.gambar, this.details});
  final String nama;
  final String gambar;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        height: 280,
        child: Hero(
            tag: nama,
            child: Material(
                child: InkWell(
              child: Image.asset(
                gambar,
                fit: BoxFit.cover,
              ),
            ))),
      ),
      nickplace(nama: nama),
      keterangan(details: details),
    ]));
  }
}

class nickplace extends StatelessWidget {
  nickplace({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Text(
          nama,
          style: const TextStyle(
              fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}

class keterangan extends StatelessWidget {
  keterangan({this.details});
  final String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Card(
        child: Text(
          details,
          style: const TextStyle(
            fontSize: 18.0,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class DetailHotels extends StatelessWidget {
  DetailHotels({this.name, this.image});
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
          height: 280,
          child: Hero(
              tag: name,
              child: Material(
                  child: InkWell(
                      child: Image.asset(
                image,
                fit: BoxFit.cover,
              )))))
    ]));
  }
}
