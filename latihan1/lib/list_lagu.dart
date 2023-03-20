import 'dart:io';

import 'package:flutter/material.dart';
import 'top_album.dart';
import 'list_album.dart';

class ListLagu extends StatefulWidget {
  final String judul_album;

  const ListLagu({Key? key, required this.judul_album}) : super(key: key);

  @override
  _ListLaguState createState() => _ListLaguState();
}

class _ListLaguState extends State<ListLagu> {
  String _cover = "";
  String _judul = "";
  String _penyanyi = "";
  String _tanggalRilis = "";
  String _label = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.judul_album}'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, index) {
            final TopAlbum list = topAlbumList[index];
            if (list.albumName == '${widget.judul_album}') {
              _cover = list.imageUrls;
              _judul = list.albumName;
              _penyanyi = list.singer;
              _tanggalRilis = list.releaseDate;
              _label = list.source;
            }
            return InkWell(
                child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.network(
                        _cover,
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                      Text(_judul),
                      Text(_penyanyi),
                      Text(_tanggalRilis + " | " + _label),
                    ])));
          },
          //itemCount: 1,
        )


    );
  }
}