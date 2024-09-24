import 'package:flutter/material.dart';
import 'package:login_page/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  //ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ignore:prefer_typing_uninitialized_variables
  var namauser;

  void_loadUsername() async {
    //Inisalisasi Share preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Ambil username yang sudah tersimpan
    namauser = prefs.getString('username');
    //Set username on UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void_loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color(0xFFBF9BA8),
      ),
      body: Container(
        color: Color(0xFFDAD5D5),
        child: Center(
          child: Text('Selamat Datang, $namauser!'),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
