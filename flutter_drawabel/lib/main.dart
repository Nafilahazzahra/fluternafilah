import 'package:flutter/material.dart';
import 'package:flutter_drawabel/page_satu.dart';
import 'package:flutter_drawabel/page_dua.dart';

// Pastikan file ini ada atau sesuaikan dengan nama yang benar
// import 'package:flutter_drawer/page_satu.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Menu Pilihan",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageSatu()),
                );
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageDua()),
                );
              },
              leading: Icon(Icons.home_max),
              title: Text("Page Dua"),
            ),
          ],
        ),
      ),
    );
  }
}

// Definisikan PageSatu agar tidak menyebabkan error
class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Text("Ini adalah Page Satu"),
      ),
    );
  }
}

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: Text("Ini adalah Page Dua"),
      ),
    );
  }
}