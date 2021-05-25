import 'package:flutter/material.dart';
import 'hal2.dart';
import 'hal3.dart';
import 'hal4.dart';
import 'hal5.dart';
import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/':(context) => halPertama(),
        '/HalDua': (context) => HalDua(),
        '/HalTiga': (context) => HalTiga(),
        '/HalEmpat': (context) => HalEmpat(),
        '/HalLima': (context) => HalLima(),
      },
      title: "COBA NAVIGATION",
      theme: ThemeData(
        primarySwatch: Colors.orange),
    );
  }
}

class halPertama extends StatelessWidget {
  // Data isidata = Data(nama: "cynnn", alamat:"swk-164");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HalTiga()));

            }, child: Text('Login')),
            SizedBox(height: 10,),
            Text("Don't Have a Account? "),
             ElevatedButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HalDua()));

            }, child: Text('Sign Up')),
            // ElevatedButton(onPressed: () async{
            //   final result = await Navigator.pushNamed(context, '/HalEmpat', 
            //   arguments: "Ini Parameter dari Halaman 1");

            //   SnackBar snackbar = SnackBar(content: Text(result));

            //   ScaffoldMessenger.of(context).showSnackBar(snackbar);
            // }, child: Text("Pindah halaman 4")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/HalEmpat');
            }, child: Text("go to 4")),
            
          ],),
        ),),
    );
  }
}