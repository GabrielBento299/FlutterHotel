import 'package:flutter/material.dart';

class Locais extends StatefulWidget {
  final String local;
  final String img;
  final String precos;

  const Locais({Key key, this.local, this.img, this.precos}) : super(key: key);
  @override
  _LocaisState createState() => _LocaisState();
}

class _LocaisState extends State<Locais> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.orange[600],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: widget.img,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(widget.img),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Text(
                          widget.local,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Text(
                        widget.precos,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                color: Colors.green[700])
          ],
        ),
      ),
    );
  }
}
