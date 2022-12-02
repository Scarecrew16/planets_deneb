import 'package:flutter/material.dart';

class PillarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45),
      height: 450,
      child: Stack(
        children: <Widget>[
          Center(
            child: Card(
              margin: EdgeInsets.only(top: 60),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () => () {},
                child: Container(
                  width: 290,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Center(
                  child: Container(
                    height: 180,
                    width: 160,
                    child: ClipRRect(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBixhRoLxnzFXZgcky-gqTK7E4Y0M0SpA91w&usqp=CAU'),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'UNSC Pillar of autumn',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Crew size: 1000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Halcyon-class cruiser used to reach facility 04,\n commanded by Captain Keys,\n was destroyed along with the facility 04.',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      'Speed:  299.792,458 km/s ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
