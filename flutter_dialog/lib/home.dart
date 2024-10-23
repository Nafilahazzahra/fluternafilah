import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Dialog"),
    ),
    body: Center(
      child: Text(
        data,
        style: TextStyle(fontSize: 30),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print("Telah Di Klik");
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("OK"),
              content: Text("Apakah di hapus?"),
              actions: [
                ElevatedButton(
                  // ...
                ),
              ],
            );
          },
        );
      },
    ),
  );
}
Widget build(BuildContext context) {
  return AlertDialog(
    title: Text("OK"),
    content: Text("Apakah di hapus?"),
    actions: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
          setState(() {
            data = "TRUE";
          });
        },
        child: Text("Yes"),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
          setState(() {
            data = "FALSE";
          });
        },
        child: Text("No"),
      ),
    ],
  );
}
class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String data = "";

  // ... bagian lain dari class

  void _saveText() {
    // Simpan teks yang dimasukkan ke dalam data
    setState(() {
      data = _textFieldController.text;
    });

    // Tampilkan pesan konfirmasi (misalnya menggunakan snackbar)
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Data telah disimpan'),
      ),
    );
  }
}