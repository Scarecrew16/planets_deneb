import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

///import 'package:rigel_application/reusable_widgets/card_country.dart';

import 'home_screen.dart';

class StarshipsScreen extends StatelessWidget {
  StarshipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    final doc1 = db.doc("/starships/s01");

    return Scaffold(
        appBar: AppBar(
          title: const Text("starships"),
          backgroundColor: Color.fromRGBO(255, 183, 77, 1),
          toolbarHeight: 75,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen2()));
            },
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            StreamBuilder(
              stream: readData(),
              builder: ((context, snapshot) {
                if (snapshot.hasError) {
                  return Text(
                      'Something went wrong! ${snapshot.connectionState}');
                } else if (snapshot.hasData) {
                  final starship = snapshot.data!;

                  return ListView(
                      //   children: starship.map(buildCountry).toList(),
                      );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
            )
          ],
        ));
  }
}

Widget buildCountry(Starship starship) =>
//CountryCard(image: starship.picture, name: starship.name, language: starship.language, speed: starship.continent, stores: starship.strores
    ListTile(
      title: Text(starship.name),
    );
//);

Future createCountry({required String name}) async {
  final docStarship = FirebaseFirestore.instance.collection('starships').doc();

  final starship = Starship(
      id: docStarship.id, name: name, picture: 'picture', speed: 'speed');

  final json = starship.toMap();

  await docStarship.set(json);
}

Stream<List<Starship>> readData() => FirebaseFirestore.instance
    .collection('starships')
    .snapshots()
    .map((snapshots) =>
        snapshots.docs.map((doc) => Starship.fromMap(doc.data())).toList());

class Starship {
  String id;
  final String name;
  final String speed;
  final String picture;

  Starship(
      {this.id = '',
      required this.name,
      required this.speed,
      required this.picture});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'speed': speed, 'picture': picture};
  }

  factory Starship.fromMap(Map<String, dynamic> json) => Starship(
      name: json['name'], speed: json['speed'], picture: json['picture']);
}
