import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Listview", home: new Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[900],
        title: new Text("Daftar Tutorial idr corner"),
      ),
      body: new ListView(
        children: <Widget>[
          // new ListTile(
          //   leading: new Icon(Icons.speaker),
          //   title: new Text("Speaker"),
          // )
          ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
            judul: "HTML",
          ),
          ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/css.jpg",
            judul: "CSS",
          ),
          ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/js.jpg",
            judul: "JAVASCRIPT",
          ),
          ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/php.jpg",
            judul: "PHP",
          ),
          ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/ci.jpg",
            judul: "CODEIGNITER",
          ),
          ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/boots.jpg",
            judul: "BOOTSTRAP",
          ),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({this.gambar, this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(
                  // "http://idrcorner.com/assets/nn/imgs/html.jpg"
                  gambar),
              width: 200.0,
            ),
            // new Text(
            //   judul,
            //   style: new TextStyle(fontSize: 20.0),
            new Container(
              child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    "Tutorial $judul",
                    style: new TextStyle(fontSize: 15.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
