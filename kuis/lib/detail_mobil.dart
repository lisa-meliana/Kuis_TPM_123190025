import 'package:flutter/material.dart';
import 'package:kuis/rental_mobil.dart';

class DetailMobil extends StatefulWidget {
  final RentalCar place;
  const DetailMobil({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailMobil> createState() => _DetailMobilState();
}

class _DetailMobilState extends State<DetailMobil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.brand + widget.place.model),
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
                    itemBuilder: (context, index) => Image.network(widget.place.images[index]),
                    itemCount: 3,
                  ),
                ),
                SizedBox(height: 10),
                Text(widget.place.brand + widget.place.model),

                SizedBox(height: 18),
                Text("Brand : " + widget.place.brand),
                Text("Model : " + widget.place.model),
                //Text("Tahun : " + $widget.place.year), harusnya pakai aturan int supaya bisa keluar tapi beum ketemu
                Text("Biaya Sewa : " + widget.place.rentalPricePerDay),

                SizedBox(height: 20),
                Text("Deskripsi\n" + widget.place.description),
              ],
            )
        ),
      ),
    );
  }
}


