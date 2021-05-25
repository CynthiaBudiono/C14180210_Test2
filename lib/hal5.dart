import 'package:flutter/material.dart';

class HalLima extends StatefulWidget {
  @override
  _HalLimaState createState() => _HalLimaState();
}

class _HalLimaState extends State<HalLima> {
  String isidropdown = "mandiri";
  String isidropdownbulan = "1";
  String isifield = "";
  String _uang = "0";
  // TextEditingController _uang = TextEditingController();
  double hasil = 0;
  void hitung() {
    setState(() {
      print("Uanggg : " + _uang.toString());
      if (isidropdown == "mandiri") {
        print("masuk mandirii");
        if (isidropdownbulan == "1") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 2 / 100) / 12) *
                 1);
        } else if (isidropdownbulan == "3") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 3 / 100) / 12) *
                 3);
        } else if (isidropdownbulan == "6") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 3 / 100) / 12) *
                 6);
        }
      } else if (isidropdown == "trust") {
        print("masuk trustt");
        if (isidropdownbulan == "1") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 3.75 / 100) / 12) *
                1);
        } else if (isidropdownbulan == "3") {
          print("masuk trusstt 3 bulann");
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 4 / 100) / 12) *
                 3);
          print("HASILL : " + hasil.toString());
        } else if (isidropdownbulan == "6") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 4 / 100) / 12) *
                 6);
        }
      } else if (isidropdown == "bni") {
        print("masuk bniii");
        if (isidropdownbulan == "1") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 2.85 / 100) / 12) *
                  int.parse(isidropdownbulan));
        } else if (isidropdownbulan == "3") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 2.85 / 100) / 12) *
                  int.parse(isidropdownbulan));
        } else if (isidropdownbulan == "6") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 2.85 / 100) / 12) *
                  int.parse(isidropdownbulan));
        }
      } else if (isidropdown == "niaga") {
        print("masuk niaga");
        if (isidropdownbulan == "1") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 3.20 / 100) / 12) *
                  int.parse(isidropdownbulan));
        } else if (isidropdownbulan == "3") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 3.5 / 100) / 12) *
                  int.parse(isidropdownbulan));
        } else if (isidropdownbulan == "6") {
          hasil = int.parse(_uang) +
              (((int.parse(_uang) * 3.5 / 100) / 12) *
                  int.parse(isidropdownbulan));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bunga"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                onSubmitted: (String _value) {
                  setState(() {
                    _uang = _value;
                    print("UANGGKU" + _uang);
                  });
                },
                // controller: _uang,
                decoration: InputDecoration(labelText: "Nominal Uang"),
              ),
              Text("Bank"),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: "mandiri",
                    child: Text("Mandiri"),
                  ),
                  DropdownMenuItem<String>(
                    value: "trust",
                    child: Text("J Trust"),
                  ),
                  DropdownMenuItem<String>(
                    value: "bni",
                    child: Text("BNI"),
                  ),
                  DropdownMenuItem<String>(
                    value: "niaga",
                    child: Text("CIMB Niaga"),
                  ),
                ],
                value: isidropdown,
                hint: Text("Contoh Dropdown Button"),
                onChanged: (String value) {
                  setState(() {
                    isidropdown = value;
                    print(isidropdown);
                  });
                },
                // style: BoxWidthStyle.tight,
              ),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("1 Bln"),
                  ),
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text("3 Bln"),
                  ),
                  DropdownMenuItem<String>(
                    value: "6",
                    child: Text("6 Bln"),
                  ),
                ],
                value: isidropdownbulan,
                hint: Text("Contoh Dropdown Button"),
                onChanged: (String value) {
                  setState(() {
                    isidropdownbulan = value;
                    print(isidropdownbulan);
                  });
                },
              ),
              ElevatedButton(onPressed: hitung, child: Text("Hitung Bunga")),
              SizedBox(height: 10,),
              Text("Hasil : " + hasil.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
