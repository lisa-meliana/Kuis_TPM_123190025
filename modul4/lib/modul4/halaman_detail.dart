import 'package:flutter/material.dart';
import 'package:modul4/modul4/tourism_place.dart';

class HalamanDetail extends StatefulWidget {
  final TourismPlace place;
  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.name),
      ),
      body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Image.network(widget.place.imageUrls[index]),
                itemCount: 3,
              ),
            ),

            Text(widget.place.name),
            Text(widget.place.description),
          ],
        )
      ),
      ),
    );
  }
}

