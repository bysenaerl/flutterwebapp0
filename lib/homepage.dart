import 'package:flutter/material.dart';
import 'pages/first_page.dart';
import 'pages/second_page.dart';
import 'pages/thirth_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  leading: Icon(Icons.home),
                  title: Text(
                    'Bülbül',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
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
                  leading: Icon(Icons.home),
                  title: Text(
                    'Kartal',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ThirthPage()));
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
                      "SE MEDYA",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "SE Medya 2006'da kurulmuş bir yayıncılık şirketidir. 2006'dan bu yana sizlerle çeşitli konular üzerine çeşitli bilgiler paylaşmaktadır. SE Medya yürütücülüğünde açılmış bu sayfa hayvanları daha yakından gözlemlemenize imkan tanıyacaktır.",
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
                      for (int i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      SizedBox(width: 10.0),
                      Text(
                        "+1M Oylama",
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
                        "İkranur Sena ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Erol",
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
                      Text("Kocaeli"),
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
                  image: AssetImage("img/homepage.png"),
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
