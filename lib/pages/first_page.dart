import 'package:flutter/material.dart';
import 'second_page.dart';
import 'thirth_page.dart';
import '../homepage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.blue[100],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                      child: Text(
                    'M E N U',
                    style: TextStyle(fontSize: 35),
                  )),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text(
                    'Serçe',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text(
                    'Kartal',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ThirthPage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Ana Sayfa',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ],
            )),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  Center(
                    child: Text(
                      "Bülbül",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Bülbül (Luscinia megarhynchos), sinekkapangiller (Muscicapidae) familyasından sesinin güzelliği ve gece ötüşüyle ün kazanmış olan ötücü bir kuş türü. Eski Türk edebiyatında andelib ve hezar da denirdi.",
                  ),
                  SizedBox(height: 10.0),
                  Spacer(flex: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      Icon(Icons.share, color: Colors.blue),
                      Icon(Icons.star, color: Colors.yellow),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Spacer(flex: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      Icon(
                        Icons.star_border,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "492 Oylama",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Spacer(flex: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Yayın Kurumu: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "SE Medya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      Text("Kocaeli/İzmit"),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/bulbul.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
