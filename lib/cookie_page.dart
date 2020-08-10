import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cookie_detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.width - 50,
            child: GridView.count(
              crossAxisCount: 2, //2 columnas
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                    false, false, context),
                _buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                    true, false, context),
                _buildCard('Cookie classic', '\$1.99',
                    'assets/cookieclassic.jpg', false, true, context),
                _buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                    false, false, context)
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CookieDetail(
                    assetPath: imgPath,
                    cookiePrice: price,
                    cookieName: name,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF7532),
                          )
                  ],
                ),
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain)),
                  )),
              SizedBox(
                height: 7.0,
              ),
              Text(
                price,
                style:
                    GoogleFonts.lato(fontSize: 14.0, color: Color(0xFFCC8053)),
              ),
              Text(
                name,
                style:
                    GoogleFonts.lato(fontSize: 14.0, color: Color(0XFF575E67)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xFFEBEBEB),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (!added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      Text(
                        'Agregar a carrito',
                        style: GoogleFonts.lato(
                            fontSize: 12.0, color: Color(0XFFD17E50)),
                      )
                    ],
                    if (added) ...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      Text(
                        '3',
                        style: GoogleFonts.lato(
                            fontSize: 12.0,
                            color: Color(0XFFD17E50),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0XFFD17E50),
                        size: 12.0,
                      )
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
