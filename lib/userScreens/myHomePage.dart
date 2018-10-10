import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/userScreens/messages.dart';
import 'package:ecommerce_app/userScreens/favorites.dart';
import 'package:ecommerce_app/userScreens/cart.dart';
import 'package:ecommerce_app/userScreens/notifications.dart';
import 'package:ecommerce_app/userScreens/history.dart';
import 'package:ecommerce_app/userScreens/profile.dart';
import 'delivery.dart';
import 'about.dart';
import 'loginLogout.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_app/tools/store.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    //giving reference that we're creating widget
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        //images we're going to have is going to fit space of continer
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/e1.jpeg'),
          AssetImage('images/e2.jpeg'),
          AssetImage('images/e3.jpeg'),
          AssetImage('images/e4.jpg'),
          AssetImage('images/e5.jpg'),
          AssetImage('images/e6.jpg'),
          AssetImage('images/e7.jpg'),
          AssetImage('images/e8.jpg'),
          AssetImage('images/e9.jpg'),
        ],
        autoplay: false,
       // animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,

      ),
    );


    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Girlies"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                    builder: (BuildContext context){
                      return GirliesFavorities();
                    }
                ),
              );

            },
          ),
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                        builder: (BuildContext context){
                          return GirliesMessages();
                        }
                    ),
                  );

                },
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.red,
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body:
      Center(

        child: ListView(
          children: <Widget>[
            image_carousel,

            Column(
              children: <Widget>[
                Flexible(
                    child: GridView.builder(
                      itemCount: storeItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index){
                          return Card(
                            child: Stack(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(storeItems[index].itemName),
                                    Text("${storeItems[index].itemPrice}"),
                                  ],
                                ),
                              ],
                            ),
                          );

                        },

                    ),
                ),
              ],

            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                    builder: (BuildContext context){
                      return GirliesCart();
                    }
                ),
              );
            },
          ),
          CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: Text("0"),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(

                accountName: Text("Saroj  Maharjan"),
                accountEmail: Text("msaroj2074@gmail.com"),

              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network("https://avatars1.githubusercontent.com/u/18261258?s=460&v=4"),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF850047),
              ),
              
            ),
            
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF850047),
                child: Icon(Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Order Notifications"),
              onTap: (){
                Navigator.of(context).push(
                  CupertinoPageRoute(builder: (BuildContext context){
                    return GirliesNotifications();
                  }),
                );
              },
              
            ),

            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF850047),
                child: Icon(Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Order History"),
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context){
                  return GirliesHistory();
                }),
                );
              },

            ),
            Divider(
              height: 5.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF850047),
                child: Icon(Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Profile Settings"),
              onTap: (){
                Navigator.of(context).push(
                  CupertinoPageRoute(
                      builder:(BuildContext context){
                        return GirliesProfile();
                      }
                  ),
                );
              },

            ),

            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF850047),
                child: Icon(Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Delivery Address"),
              onTap: (){
                Navigator.of(context).push(
                    CupertinoPageRoute(
                        builder:(BuildContext context){
                          return GirliesDelivery();
                        }
                    ),
                );

              },

            ),

            Divider(),
            ListTile(
              trailing: CircleAvatar(
                backgroundColor: Color(0xFF850047),
                child: Icon(Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("About Us"),
              onTap: (){
                Navigator.of(context).push(
                  CupertinoPageRoute(
                      builder:(BuildContext context){
                        return GirliesAbout();
                      }
                  ),
                );
              },

            ),

            ListTile(
              trailing: CircleAvatar(
                backgroundColor: Color(0xFF850047),
                child: Icon(Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Login"),
              onTap: (){
                Navigator.of(context).push(
                  CupertinoPageRoute(
                      builder:(BuildContext context){
                        return GirliesLogin();
                      }
                  ),
                );
              },

            ),

          ],

        ),

      ),
    );
  }
}
