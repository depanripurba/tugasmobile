import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'routing navigation',
    initialRoute: '/',
    routes: {
      '/':(context)=>HalamanPertama(),
      HalamanKedua.routeName:(context)=>HalamanKedua(),
      HalamanKetiga.routeName:(context)=>HalamanKetiga(),
      
    },
    ),);
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Pertama"),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            RaisedButton(
              child: Text("Pindah ke halaman dua"),
              onPressed: (){
                Navigator.pushNamed(context, HalamanKedua.routeName);
              },
            ),
            RaisedButton(
              child: Text("Pindah ke halaman tiga"),
              onPressed: (){
                Navigator.pushReplacementNamed(context, HalamanKetiga.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
class HalamanKedua extends StatelessWidget{
  static const String routeName = "/halamanKedua";
 @override
 Widget build(BuildContext context){
   return Scaffold(
    appBar:AppBar(
      title: Text("ini adalah halaman kedua"),
      ),
      body:Center(
        child: RaisedButton(
          child: Text("kembali"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
  );
  }
}
class HalamanKetiga extends StatelessWidget{
  static const String routeName = "/halamanKetiga";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Ketiga"),
      ),
      body:Center(
        child: Text("ini adalah halaman ketiga"),
      ) ,
      );
  }
}
