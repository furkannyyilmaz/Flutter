import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1, sayi2, sonuc;

  TextEditingController t1 =
  TextEditingController(); //textfield içindeki metinleri okur
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    sayi1 = num.parse(t1.text);
    sayi2 = num.parse(t2.text);
    setState(() {
      sonuc = sayi1 + sayi2;
      return sonuc;
    });
  }

  sayiCikar() {
    sayi1 = num.parse(t1.text);
    sayi2 = num.parse(t2.text);
    setState(() {
      sonuc = sayi1 - sayi2;
      return sonuc;
    });
  }

  sayiCarp() {
    sayi1 = num.parse(t1.text);
    sayi2 = num.parse(t2.text);
    setState(() {
      sonuc = sayi1 * sayi2;
      return sonuc;
    });
  }

  sayiBol() {
    sayi1 = num.parse(t1.text);
    sayi2 = num.parse(t2.text);

    setState(() {
      sonuc = sayi1 / sayi2;
      return sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(sonuc.toString()),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              children: <Widget>[
                RaisedButton(onPressed: sayiTopla, child: Text("topla")),
                RaisedButton(
                  onPressed: sayiCikar,
                  child: Text("cikar"),
                ),
                RaisedButton(
                  onPressed: sayiCarp,
                  child: Text("carp"),
                ),
                RaisedButton(
                  onPressed: sayiBol,
                  child: Text("bol"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
