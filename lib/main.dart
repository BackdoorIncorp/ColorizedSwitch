import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  bool _value = false;
  bool _value2 = false;

  void onChange1(bool value) => setState(() => _value = value);
  void onChange2(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Hello World"),
              new Switch(value: _value, onChanged: onChange1),
              new SwitchListTile(value: _value2, 
                  title: new Text("Lol",style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
                  controlAffinity: ListTileControlAffinity.trailing,
                  subtitle: new Text("data",style: new TextStyle(fontWeight: FontWeight.w100,color: Colors.orangeAccent),),
                  onChanged: onChange2)
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}