// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_firstapp/layoutcolumn.dart';
import 'package:flutter_firstapp/layoutlistview.dart';
import 'package:flutter_firstapp/layoutrow.dart';

void main() {
  runApp(MyHomepage());
}

/* # Widget flutter ada 2 jenis:
  - stateless widget  : widget dengan nilai yg statis
  - stateful widget   : widget dengan nilai yg bisa diubah
*/

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Belajar Flutter',
      home: LayoutListView(), // class yg pertama kali dibuka
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Basic Structure'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Belajar Dasar Flutter',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              'Struktur Dasar Aplikasi Flutter',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            Text('Flutter Sederhana'),
          ],
        ),
      ),
    ));
  }
}

// sebuah class yg statefull widget
class BookPage extends StatefulWidget {
  BookPage({Key? key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  // inisialisasi nilai awal
  int _jumlahBuku = 1; // private

  void incrementBuku() {
    setState(() {
      _jumlahBuku++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment Buku'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Jumlah buku : $_jumlahBuku',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementBuku,
        tooltip: 'Tambah Buku',
        child: Icon(Icons.add),
      ),
    );
  }
}
