import 'package:flutter/material.dart';
import 'package:kuis/detail_mobil.dart';
import 'package:kuis/rental_mobil.dart';

class ListMobil extends StatelessWidget {
  const ListMobil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental Mobil'),
      ),
      body: ListView.builder(
    itemCount: rentalCar.length,
      itemBuilder: (context, index){
        final RentalCar place = rentalCar[index];
        return ListTile(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => DetailMobil(place: place))
            );
          },
          leading: Image.network(place.images[0],
            width: 100,
            fit: BoxFit.cover,
          ),
          title: Text(place.brand + " " + place.model),
          subtitle: Text((place.rentalPricePerDay + "/hari")),
        );
      },
    ),

    );
  }
}
