import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DataTable Depanri",
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
      }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("DataTable")),
        body: new Column(
          children: <Widget>[
         new DataTable(
           columns: [
            DataColumn(
              label: new Text("Nama barang"),
              numeric: false
            ),
            DataColumn(
              label: new Text("Harga"),
              numeric: true
            )
           ],
           rows: [],
         )
        ]
        )
        );
  }
}


