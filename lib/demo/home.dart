import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecomm/demo/horizontal_listview.dart';
import 'package:ecomm/demo/products.dart';
//import 'package:ecomm/helpers/common.dart';
import 'package:ecomm/provider/user.dart';
//import 'package:ecomm/screens/order.dart';
import 'package:ecomm/screens/profile.dart';
import 'package:ecomm/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _key = GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Shopping'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new SearchData()));
              }),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new CartScreen()));
              }),
          new IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MyAccount()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header

            new UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text('Sachin1@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.lightBlue),
            ),
            //body

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new HomePage()));
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.blueAccent),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MyAccount()));
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.indigoAccent),
              ),
            ),
            InkWell(
              onTap: () {
/*                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new OrdersScreen())); */
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.green[500]),
              ),
            ),
            InkWell(
              onTap: () {
                /*  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new CartScreen())); */
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.cyan),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.pinkAccent),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settigns'),
                leading: Icon(Icons.settings, color: Colors.black87),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.greenAccent),
              ),
            ),
            InkWell(
              onTap: () async {
                userProvider.signOut();
              },
              child: ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout, color: Colors.greenAccent),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //imagecarousel begins here
          //padding widget
          Container(
            height: 200.0,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('images/pixel.jpg'),
                AssetImage('images/pexels2.jpg'),
                AssetImage('images/pexels3.jpg'),
                AssetImage('images/pexels4.jpg'),
                AssetImage('images/m3.jpg'),
                AssetImage('images/m2.jpg'),
                AssetImage('images/m1.jpeg'),
              ],
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 5.0,
              indicatorBgPadding: 10.0,
              dotBgColor: Colors.transparent,
            ),
          ),

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          //Horizontal List view begins here
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Products')),
          ),
          //gridview
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
