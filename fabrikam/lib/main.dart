import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new  Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/c1.jpg'),
        AssetImage('assets/m1.jpeg'),
        AssetImage('assets/m2.jpeg'),
        AssetImage('assets/w1.jpeg'),
        AssetImage('assets/w3.jpeg'),
        AssetImage('assets/w4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 6.0,
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Fabrikam'),
        actions: [
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
        ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Zohora Sananda'), accountEmail: Text('sananda@iut-dhaka.edu'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('My Orders'),
                leading: Icon(Icons.shopping_bag_outlined),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: [
          image_carousel,
        ],
      ),
      );
  }
}
