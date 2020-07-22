import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    'Hii DR',
    textDirection: TextDirection.ltr,
    // textAlign: TextAlign.center,
  );

  mypress() {
    print("something clicked ...");
  }

  mypress2() {
    print('something clicked......');
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.grey.shade900,
  );
  var MyCalIcon = Icon(Icons.access_alarm);
  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress);
  var MyCalButton = IconButton(icon: MyCalIcon, onPressed: mypress2);

  var url =
      'https://github.com/Prashantsaini25/flutter_class4/blob/master/DSC_1289.JPG';
  var Myimage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.red,
    leading: Myimage,
    actions: <Widget>[
      MyEmailButton,
      MyCalButton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: Myimage,
    backgroundColor: Colors.grey.shade400,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
