import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('2018020728-6SIA6'),
        ),
        body: Warung_internet(),
      ),
    );
  }
}

class TARIFBIAYA{
  
  String paketbebas;
  String paketmalam;
  
  
  TARIFBIAYA({ this.paketbebas, this.paketmalam});
  
}

// class Warung_internet
// ignore: camel_case_types
class Warung_internet extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Warung_internet> {
  //deklarasi variabel
  final txtpaketmalam = TextEditingController();
  final txtpaketbebas = TextEditingController();
  final txtpilihan = TextEditingController();
  

  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading:  Text(txtpaketmalam.text),
        subtitle: Text(txtpaketbebas.text),
        trailing: Text(txtpilihan.text),
      ));
      txtpaketmalam.clear();
      txtpaketbebas.clear();
      txtpilihan.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
           
              TextField(
                controller: txtpaketmalam,
                decoration: InputDecoration(hintText: 'pagi'),
              ),
              TextField(
                controller: txtpaketbebas,
                decoration: InputDecoration(hintText: 'malam'),
              ),
               TextField(
                controller: txtpilihan,
                decoration: InputDecoration(hintText: 'pilihan'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}