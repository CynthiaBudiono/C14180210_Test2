import 'package:flutter/material.dart';
import 'data.dart';
import 'global.dart' as global;

class HalDua extends StatefulWidget {
  @override
  _HalDuaState createState() => _HalDuaState();
}

class _HalDuaState extends State<HalDua> {
  String _textuser = "";
  String _textEmail = "";
  String  _textpass = "";
  void addakun(){
    setState(() {
          
       
    print("aa" + _textuser + _textEmail + _textpass);
    if(_textuser !="" && _textEmail!="" && _textpass!=""){
      global.listakun.add(new Data(_textuser.toString(), _textEmail.toString(), _textpass.toString()));
      // print(arr[0].username);
      print("berhasil nambah akun");
    }
    else{
      print("field tidak boleh kosong");
    }
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          TextField(
            onSubmitted: (String _value) {
                  setState(() {
                    _textuser = _value;
                    print("UANGGKU" + _textuser);
                  });
                },
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextField(
            onSubmitted: (String _value) {
                  setState(() {
                    _textEmail = _value;
                    print("UANGGKU" + _textEmail);
                  });
                },
            decoration: InputDecoration(labelText: "Email"),
          ),
          TextField(
            onSubmitted: (String _value) {
                  setState(() {
                    _textpass = _value;
                    print("UANGGKU" + _textpass);
                  });
                },
            decoration: InputDecoration(labelText: "Password"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: addakun, 
          child: Text("Register Now")),
        ])));
  }
}