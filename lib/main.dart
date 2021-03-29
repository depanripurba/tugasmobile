import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner:false,
    title:"uts Mobile",
    initialRoute:"/",
    routes:{
      "/":(context)=>HalamanPertama(),
       "/Halamandua":(context)=>HalamanKedua()
    }
    )
  );
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
          title:new Text("UTS Pemograman Mobile"),
          centerTitle:true,
          
      ),
     body: new Text("hai nama saya depanri purba"),
   );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
          title:new Text("Identitas (Hal1)")
          
      )
   );
  }
}

class HalamanKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
          title:new Text("Pendidikan (hal2)")
          
      )
   );
  }
}

class HalamanKeempat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
          title:new Text("Hoby (hal3)")
          
      )
   );
  }
}

class HalamanKelima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
          title:new Text("Keahlian (hal4)")
          
      )
   );
  }
}

class HalamanKeenam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
          title:new Text("Pendapatku (hal5)")
          
      )
   );
  }
}


