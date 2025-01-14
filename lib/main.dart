import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ) //MaterialApp
      );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('IbrozExpress',style:TextStyle(color: Colors.white,
            fontSize: 30.0,
        fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Ibra'),
              accountEmail: Text('ibraposs@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
//        body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorite'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
