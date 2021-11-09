import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Container> tempat = [];

var places = [
  {
    "title": "Tanjung Mariam",
    "image": "assets/images/tanjung_mariam.jpg",
    "summary":
        "Toro maria,atau sebagian ada yang menyebutnya toro mariam,tanjung mariam atau tanjung meriam. Keunikan wilayah ini adalah selain bagian pantainya yang indah,ada juga susunan batu Columnar Joint yang memenuhi hampir seluruh bagian bukit.\n\ncolumnar joint yang ditemukan di Tanjung Meriam tersebut memiliki struktur yang sama dengan bebatuan di situs Gunung Padang. Bedanya jika batuan heksagonal di Gunung Padang kemungkinan besar dibawa oleh manusia, batu di Tanjung meriam ini diyakini terbentuk alami oleh alam.",
  },
  {
    "title": "Pantai Pink",
    "image": "assets/images/pantai_pink.jpg",
    "summary":
        "Pantai Pink di Bima ini terletak di wilayah Desa Lambu, Kecamatan Lambu , Kabupaten Bima. Untuk menuju ke Pantai Pink ini dari Kota Bima, pengunjung harus menempuh  jarak sekitar 60 kilometer. Selain itu juga membutuhkan waktu sekitar 2 jam perjalanan kemudian dilanjutkan dengan naik perahu dari Pelabuhan Sape atau dari Desa Lambu.Rute menuju pantai pink lambu Bima sangat mudah. Perjalanan di mulai dari Sape dan dalam perjalanan pengunjung bisa menikmati pemandangan yang didominasi gunung dengan padang savana yang luas di wilayah kecamatan Lambu. Selain itu juga terdapat pantai yang berdekatan dengan Pantai Pasir Putih, Tanjung Mariam dan Pulau Kelapa Bima."
  },
  {
    "title": "Gunung Tambora",
    "image": "assets/images/tambora.jpg",
    "summary":
        "Gunung Tambora merupakan gunung berapi yang sudah tidak aktif dengan ketinggian 2.851 mdpl dan berlokasi di perbatasan antara kabupaten Bima dan kabupaten Dompu di pulau Sumbawa. Sumbawa, Sebuah Potensi Wisata di Nusa Tenggara Barat selain Lombok. Mendengar nama “Gunung Tambora” mungkin tidak asing lagi bagi para pencinta wisata alam apalagi bagi wisatawan yang menyukai pendakian gunung,Bagi para pecinta wisata alam, tidak ada salahnya mencoba melakukan pendakian ke gunung Tambora."
  },
  {
    "title": "Pantai Lariti",
    "image": "assets/images/pantai_lariti.jpeg",
    "summary":
        "Bima tak habis menawarkan berbagai destinasi wisata pantai. Kali ini adalah Pantai Lariti. Pantai ini tidak hanya menawarkan keindahan alam khas pesisir namun juga keunikan lain. Pantai ini memiliki keunikan karena bisa terbelah di malam hari. Ini terjadi ketika lautan surut dan terdapat gundukan pasir yang membelah lautan. Di atas gundukan pasir ini Anda bisa melihat pemandangan yang luar biasa."
  },
  {
    "title": "Pulau Kelapa",
    "image": "assets/images/pulau_kelapa.jpg",
    "summary":
        "Destinasi pertama yang bisa Anda kunjungi saat berada di Bima adalah Pulau Kelapa. Disini Anda bisa menikmati esksotisme pantai dengan air laut yang jernih serta pasir lembut mengitari pulau. Meskipun untuk mengaksesnya cukup sulit, Anda tidak akan menyesal mengunjungi pantai ini. Jika ingin menikmati pantai Pulau Kelapa dengan cara berbeda, Anda bisa melakukan treking ke atas bukit di pantai ini dan nikmati cantiknya pemandangan sunset. Lautnya yang jernih juga bisa Anda nikmati dari bawah laut dengan melakukan snorkeling. "
  },
];

Widget makeItem({image, title}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.2),
              Colors.black.withOpacity(.1),
            ])),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}
