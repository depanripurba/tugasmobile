import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "uts Mobile",
      initialRoute: "/",
      routes: {
        "/": (context) => HalamanPertama(),
        "/Halamandua": (context) => HalamanKedua(),
        "/Halamantiga": (context) => HalamanKetiga(),
        "/Halamanempat": (context) => HalamanKeempat(),
        "/Halamanlima": (context) => HalamanKelima(),
        "/Halamanenam": (context) => HalamanKeenam(),
      }));
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("UTS Pemograman Mobile"),
          centerTitle: true,
        ),
        body: new ListView(children: <Widget>[
          new Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: new Card(
                child: ListTile(
                    leading: new Icon(
                      Icons.contact_page,
                      color: Colors.orange,
                    ),
                    title: new TextButton(
                        child: new Text("Identitas"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/Halamandua");
                        })),
              )),
          new Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: new Card(
                child: ListTile(
                    leading:
                        new Icon(Icons.accessibility, color: Colors.orange),
                    title: new TextButton(
                        child: new Text("Pendidikan"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/Halamantiga");
                        })),
              )),
          new Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: new Card(
                child: ListTile(
                    leading: new Icon(Icons.build, color: Colors.orange),
                    title: new TextButton(
                        child: new Text("Keahlian"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/Halamanempat");
                        })),
              )),
          new Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: new Card(
                child: ListTile(
                    leading: new Icon(Icons.face, color: Colors.orange),
                    title: new TextButton(
                        child: new Text("Hoby"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/Halamanlima");
                        })),
              )),
          new Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: new Card(
                child: ListTile(
                    leading: new Icon(Icons.comment_bank, color: Colors.orange),
                    title: new TextButton(
                        child: new Text("Argumen"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/Halamanenam");
                        })),
              )),
        ]));
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Identitas (Hal1)")),
        body: new ListView(children: <Widget>[
          new Card(child: new Center(child: new Text("Identitas"))),
          new Container(
              child: new Column(
            children: <Widget>[
              new Card(
                child: new ListTile(
                  title: new Text("Nama"),
                  subtitle: new Text("DEPANRI PURBA"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Nirm"),
                  subtitle: new Text("2018020777"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Kelas"),
                  subtitle: new Text("6SIA5"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Alamat"),
                  subtitle: new Text("Desa Aek Dakka Kecamatan Barus"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Email"),
                  subtitle: new Text("depanri.purba@gmail.com"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("No Wa"),
                  subtitle: new Text("0813 1035 4312"),
                ),
              )
            ],
          ))
        ])
        );
  }
}

class HalamanKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Pendidikan (hal2)")),
        body: new ListView(children: <Widget>[
          new Card(child: new Center(child: new Text("Pendidikan"))),
          new Container(
              child: new Column(
            children: <Widget>[
              new Card(
                child: new ListTile(
                  title: new Text("SD"),
                  subtitle: new Text("SD Inpress 155709"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("SMP"),
                  subtitle: new Text("SMP Negeri 1 Barus"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("SMA"),
                  subtitle: new Text("SMA Negeri 1 Barus"),
                ),
              )
            ],
          ))
        ])
        );
  }
}

class HalamanKeempat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("Keahlian (hal3)")),
     body: new ListView(children: <Widget>[
          new Card(child: new Center(child: new Text("Keahlian"))),
          new Container(
              child: new Column(
            children: <Widget>[
              new Card(
                child: new ListTile(
                  title: new Text("Pemograman"),
                  subtitle: new Text("PHP"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Framework"),
                  subtitle: new Text("Codeigniter"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Framework"),
                  subtitle: new Text("Laravel"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Pemograman"),
                  subtitle: new Text("Javascript"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Pemograman"),
                  subtitle: new Text("Node JS"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Framework"),
                  subtitle: new Text("React JS"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Framework"),
                  subtitle: new Text("Express JS"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Desain Grafis"),
                  subtitle: new Text("Corel Draw, Photoshop"),
                ),
              )
            ],
          ))
        ])
    );
  }
}

class HalamanKelima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("Hoby (hal4)")),
     body: new ListView(children: <Widget>[
          new Card(child: new Center(child: new Text("Hoby/Waktu Luang"))),
          new Container(
              child: new Column(
            children: <Widget>[
              new Card(
                child: new ListTile(
                  title: new Text("Seni Musik"),
                  subtitle: new Text("Gitar, Organ"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Game"),
                  subtitle: new Text("Catur, Evowars"),
                ),
              ),
              new Card(
                child: new ListTile(
                  title: new Text("Olahraga"),
                  subtitle: new Text("Sepak Bola, Bola Voli"),
                ),
              ),
            ],
          ))
        ])
    );
  }
}

class HalamanKeenam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("Argumenku(hal5)")),
    body: new Container(
      child: new Column(
        children: <Widget>[
          new Center(
            child: new Text("Pandangan Tentang Pendidikan"),
          ),
          new Container(
            padding: EdgeInsets.all(10),
            child: new Text("Pada saat ini semua bidang pendidikan melakukan kegiatan belajar mengajar melalui media daring. Menurut saya sistem seperti ini sangat buruk untuk mutu pendidikan dimana semua unsur yang terlibat dalam bidang pendidikan menjadi tidak serius dalam melaksanakan proses pembelajaran baik itu dari sisi pengajar maupun dari sisi siswa. Logikanya sederhananya seperti ini, sedangkan secara langsung dilakukan pembelajaran, mutunya belum maksimal, apalagi dalam kondisi yang virtual. Menurut saya kebijaksanaan untuk masalah ini harus diperhatikan dengan baik. Jika sistem menggunakan virtual, jika kita memandangnya dari sisi laba rugi, maka, sistem seperti ini tidak ada untungnya. Biaya yang dikeluarkan tidak sepadan dengan yang didapatkan"),
          )
        ],
      ),
    )
    );
  }
}
