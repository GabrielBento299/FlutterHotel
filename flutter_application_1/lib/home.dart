import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/floatbutton.dart';
import 'package:flutter_application_1/locais.dart';
import 'package:flutter_application_1/login.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.yellow, Colors.green]),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/trip.jpg',
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          iconSize: 35),
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                          iconSize: 35)
                    ]),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 35, left: 25),
                      child: Text('Viagens ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ))),
                  Padding(
                      padding: EdgeInsets.only(top: 50, left: 5),
                      child: Text('Incriveis',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)))
                ]),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height - 350,
              child: Padding(
                padding: EdgeInsets.only(top: 5, right: 10, left: 5),
                child: ListView(
                  children: [
                    Locais(
                      local: 'Salvador',
                      precos: 'R\$2500,000.00',
                      img: 'assets/trip.jpg',
                    ),
                    Locais(
                      local: 'Norte',
                      precos: 'R\$2500,000,00',
                      img: 'assets/rn.png',
                    ),
                    Locais(
                      local: 'Pernanbuco',
                      precos: 'R\$2500.000.00',
                      img: 'assets/pern.jpg',
                    ),
                    Locais(
                      local: 'Noronha',
                      precos: 'R\$2500,000.00',
                      img: 'assets/noronha.jpg',
                    ),
                    Locais(
                      local: 'Natal',
                      precos: 'R\$2500,000.00',
                      img: 'assets/natal.jpg',
                    ),
                    Locais(
                      local: 'Recife',
                      precos: 'R\$2500,000.00',
                      img: 'assets/recife.jpeg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatButton(),
    );
  }
}
