import 'package:flutter/material.dart';
import 'package:modul4/modul4/halaman_detail.dart';
import 'package:modul4/modul4/tourism_place.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tourism Place'),
      ),
      body: ListView.builder(
          itemCount: tourismPlaceList.length,
          itemBuilder: (context, index){
            final TourismPlace place = tourismPlaceList[index];
            return ListTile(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => HalamanDetail(place: place))
                );
              },
              leading: Image.network(place.imageUrls[1],
              width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(place.name),
              subtitle: Text(place.location),
            );
          },
      ),
    );
  }
}
