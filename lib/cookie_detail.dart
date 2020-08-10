import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookiePrice, cookieName;

  const CookieDetail(
      {Key key, this.assetPath, this.cookiePrice, this.cookieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF545D68),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          'Misk\'i',
          style: GoogleFonts.tenaliRamakrishna(
              fontSize: 32.0, color: Color(0xFF545D68)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_none),
              color: Color(0xFF545D68),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: GoogleFonts.lato(
                  fontSize: 54.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
              tag: assetPath,
              child: Image.asset(
                assetPath,
                height: 150.0,
                width: 100.0,
                fit: BoxFit.contain,
              )),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              cookiePrice,
              style: GoogleFonts.lato(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              cookieName,
              style: GoogleFonts.lato(fontSize: 24.0, color: Color(0xFF575E67)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: Text(
                'Cold, creamy ice cream sandwiched between delicious deluxe cookie. Pick your favorite deluxe cookies and ice cream flavor',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(fontSize: 16.0, color: Color(0xFFB4B8B9)),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF17532)),
              child: Center(
                child: Text(
                  'Add to cart',
                  style: GoogleFonts.lato(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
