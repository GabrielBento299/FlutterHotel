import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/floatbutton.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          bottom: 50,
          left: 50,
          right: 50,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.red, Colors.yellow],
        )),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              alignment: Alignment.center,
              child: Text(
                'Melhores Viagen1s',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.green[700],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 170,
                height: 180,
                child: Image.asset('assets/viagem.jpg'),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.email,
                      color: Colors.blueAccent,
                    ),
                  ),
                  labelText: 'Email'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              cursorColor: Colors.greenAccent,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.admin_panel_settings,
                        color: Colors.blueAccent),
                  ),
                  labelText: 'Senha'),
            ),
            FlatButton2(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FloatButton3(),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: FloatButton2(),
            )
          ],
        ),
      ),
    );
  }
}
