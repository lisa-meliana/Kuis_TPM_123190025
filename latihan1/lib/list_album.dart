import 'package:flutter/cupertino.dart';

import 'top_album.dart';
import 'list_lagu.dart';
import 'package:flutter/material.dart';

class ListAlbum extends StatelessWidget {
  const ListAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Spoti-Pay')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            final TopAlbum list = topAlbumList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListLagu(judul_album: list.albumName);
                }));
              },
              child: Card(
                child: Row(
                  children: [
                    Image.network(
                      list.imageUrls,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: topAlbumList.length,
        ));
  }
}