import 'dart:js';
import 'global.dart' as global;
import 'package:flutter/material.dart';
import 'package:latihan_03_navigation/hal4.dart';
import 'data.dart';

class HalTiga extends StatelessWidget {
  final _textuser = TextEditingController();
  // final _textEmail = TextEditingController();
  final _textpass = TextEditingController();
  // List<Data> listakun;
  // Data listakun = new Data("", "", "");
  void cekakun() {
    print("cekakun");
    print("listakun: "+global.listakun.length.toString());
    for (var i = 0; i < global.listakun.length; i++) {
      print("username" + global.listakun[i].username);
      print("pass" + global.listakun[i].pass);
      // ignore: unrelated_type_equality_checks
      if (_textuser != "" && _textpass != "") {
        // ignore: unrelated_type_equality_checks
        if (global.listakun[i].username == _textuser &&
            // ignore: unrelated_type_equality_checks
            global.listakun[i].pass == _textpass) {
              print("MASUKKK, bisa pindah halaman");
        } else {
          print("Not Found Account, please register");
        }
      } else {
        print("field tidak boleh kosong");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          TextField(
            controller: _textuser,
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextField(
            controller: _textpass,
            decoration: InputDecoration(labelText: "Password"),
          ),
          ElevatedButton(onPressed: cekakun, child: Text("Login")),
          SizedBox(
            height: 10,
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //     child: Text("Go Back")),
          SizedBox(
            height: 10,
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushReplacementNamed(context, '/HalTiga');
          //     },
          //     child: Text("Pindah Hal 3"))
        ])));
  }
}
