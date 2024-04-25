import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();


class tugas extends StatefulWidget {
  const tugas({super.key});

  @override
  State<tugas> createState() => _tugasState();
}

class _tugasState extends State<tugas> {
  String? namaGambar;
  gantiNama(String nama){
    setState(() {
      namaGambar = nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gambar"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("Ini Anjing");
                      await player.setAsset("aset/suara/anjing.mpeg");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/anjing.jpeg')
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("Ini Harimau");
                      await player.setAsset("aset/suara/harimau.mpeg");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/harimau.jpeg')
                  )
                ),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("Ini Kucing");
                      await player.setAsset("aset/suara/kucing.mpeg");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/kucing.jpeg')
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("Ini Rubah");
                      await player.setAsset("aset/suara/rubah.mpeg");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/rubah.jpeg')
                  )
                ),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("Ini Sapi");
                      await player.setAsset("aset/suara/sapi.mpeg");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/sapi.jpeg')
                  )
                ),
              ],
            )
          ),
          Text(namaGambar ?? "Klik Salah Satu Gambar")
        ],
      ),
    );
  }
}