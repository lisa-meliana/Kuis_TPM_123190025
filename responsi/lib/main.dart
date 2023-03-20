//Nama : Lisa Meliana
//NIM : 123190025
import 'package:flutter/material.dart';
import 'package:responsi/screens/DetailScreen.dart';
import 'package:responsi/screens/HomeScreen.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsi',
      // home: HomeScreen(),
      home: DetailScreen(
        mangaImg: "https://4.bp.blogspot.com/-iz7Z_jLPL6E/XQ8eHVZTlnI/AAAAAAAAHtA/rDn9sYH174ovD4rbxsC8RSBeanFvfy75QCKgBGAs/w1440-h2560-c/genshin-impact-characters-uhdpaper.com-4K-2.jpg",
        mangaTitle: "GENSHIN IMPACT",
        mangaLink: "https://api.genshin.dev",
      ),
    );
  }
}
//class BaseNetwork {
  //static final String baseUrl = "https://api.genshin.dev";

  //static Future<Map<String, dynamic>> get("https://api.genshin.dev/weapons/${nama_weapon}/icon") async {

 // }

  //static Future<List<dynamic>> getList("https://api.genshin.dev/characters/${nama_karakter}/list") async {

  //}

  //static Future<Map<String, dynamic>> _processResponse(
      //http.Response response) async {

  //}

  //static Future<List<dynamic>> _processResponseList(
      //http.Response response) async {

 // }

 // static void debugPrint(String value) {
   // print("[BASE_NETWORK] - $value");
 // }
//}