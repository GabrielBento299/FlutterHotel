import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class FloatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 170,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.orange[700],
              borderRadius: BorderRadius.circular(55)),
          child: Row(
            children: [
              Icon(Icons.airplanemode_on, color: Colors.white),
              SizedBox(width: 7),
              Text(
                'Faça sua reserva',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FloatButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 180,
          height: 70,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.pink,
              ]),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.flare_rounded, color: Colors.yellow),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Login com facebook',
                  style: TextStyle(color: Colors.blue[400], fontSize: 23),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FloatButton3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeWidget()));
        },
        child: Container(
          width: 180,
          height: 70,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.pink,
              ]),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.wb_sunny_sharp, color: Colors.yellow),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlatButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () {},
          child: Text('esqueceu sua senha'),
        ));
  }
}
