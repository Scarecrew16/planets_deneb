import 'package:deneb_v2/screens/add_planet_screen.dart';
import 'package:flutter/material.dart';
import 'package:deneb_v2/screens/home_screen.dart';

class HoleScreen extends StatefulWidget {
  const HoleScreen({Key? key}) : super(key: key);

  @override
  _HoleScreenState createState() => _HoleScreenState();
}

class _HoleScreenState extends State<HoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen2()));
            },
          ),
          title: const Text("Deneb"),
          backgroundColor: Color.fromARGB(255, 94, 93, 93),
          elevation: 0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: Text(
                  'Black Holes',
                  style: TextStyle(
                    color: Color.fromARGB(255, 122, 119, 119),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              height: 485,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
