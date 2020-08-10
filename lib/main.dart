import 'package:cookie_store/bottom_bar.dart';
import 'package:cookie_store/cookie_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
            onPressed: () {}),
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
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Categorías',
            style:
                GoogleFonts.lato(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text(
                    'Cokkies',
                    style: GoogleFonts.lato(fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cokkies cake',
                    style: GoogleFonts.lato(fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Ice cream',
                    style: GoogleFonts.lato(fontSize: 21.0),
                  ),
                )
              ]),
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[CookiePage(), CookiePage(), CookiePage()],
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
