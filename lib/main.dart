import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DataTable Depanri",
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/Halamandua': (context) => Halamandua(),
      }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Depanri-DataTable")),
        body: new Column(children: <Widget>[
          new Center(
            child: new Text(
              "Tabel Mahasiswa",
              style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          new DataTable(
            columns: [
              DataColumn(label: Text('NIRM')),
              DataColumn(label: Text('Nama Mahasiswa')),
              DataColumn(label: Text('Jurusan')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('2018020777')),
                DataCell(Text('Depanri Purba')),
                DataCell(Text('Komputer')),
              ]),
              DataRow(cells: [
                DataCell(Text('2018020019')),
                DataCell(Text('Vina Al Fitriani')),
                DataCell(Text('Hukum')),
              ]),
              DataRow(cells: [
                DataCell(Text('2018021014')),
                DataCell(Text('Dien Ronatio Tambunan')),
                DataCell(Text('Ekonomi')),
              ]),
            ],
          ),
          new Center(
            child: new TextButton(
              child: new Text("Tabel dengan Array"),
              onPressed: () {
                Navigator.pushNamed(context, "/Halamandua");
              },
            ),
          )
        ]));
  }
}

class Halamandua extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Halamandua> {
  List<Mahasiswa> mahasiswa;
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("halaman 2"),
      ),
      body: new ListView(
        children: <Widget>[
          new Center(
            child: new Text("Tabel Bagian dua"),
          ),
          new DataTable(
            columns: [
              DataColumn(label: Text('NIRM')),
              DataColumn(label: Text('Nama Mahasiswa')),
              DataColumn(label: Text('Jurusan')),
            ],
            rows: Mahasiswa.getMahasiswa()
                .map(
                  (mahasiswa) => DataRow(cells: [
                    DataCell(Text(mahasiswa.nirm)),
                    DataCell(Text(mahasiswa.nama)),
                    DataCell(Text(mahasiswa.jurusan)),
                  ]),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class Mahasiswa {
  String nirm;
  String nama;
  String jurusan;
  // constructor
  Mahasiswa({this.nirm, this.nama, this.jurusan});
  static List<Mahasiswa> getMahasiswa() {
    return <Mahasiswa>[
      Mahasiswa(nirm: "061", nama: "Pandu Azhari", jurusan: "Komputer"),
      Mahasiswa(nirm: "019", nama: "Vina Al Fitriani", jurusan: "Hukum"),
      Mahasiswa(nirm: "014", nama: "Dien Ronatio", jurusan: "Ekonomi"),
    ];
  }
}
