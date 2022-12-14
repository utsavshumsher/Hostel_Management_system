import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('User'),
                accountEmail: Text('unknown@gmail.com'),
              currentAccountPicture: CircleAvatar(
              ),
            )
          ],
        )
      ),
      body: Stack(
        children: [

              Container(
                height: size.height *.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment:  Alignment.topCenter,
                    image: AssetImage('image1.png'),
                  )
                ),
              ),
              SafeArea(
                  child:Column(
                    children:  [
                      Container(
                        height: 62,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 62,
                              backgroundColor: Colors.white,
                            ),
                            Column(
                              mainAxisAlignment:  MainAxisAlignment.center,
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'profile',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 3),

                                ),
                                Text('User',style: TextStyle(color: Colors.white),)
                              ],
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Expanded(
                          child: GridView.count(
                            mainAxisSpacing: 10,
                              crossAxisCount: 2,
                            children: [
                              Card(
                                child: Column(
                                  mainAxisAlignment:  MainAxisAlignment.center,
                                  children: [
                                    Image.asset('image2.jpg',height: 120,),
                                    Text('Rooms'),

                                  ],
                                ),
                              ),
                              Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('image3.jpg',height: 120,),
                                    Text('About Us'),
                                  ],
                                ),
                              ),
                              Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('image4.png',height: 120,),
                                    Text('Complains'),
                                  ],
                                ),
                              ),
                              Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('image5.png',height: 120,),
                                    Text('Receipt'),
                                  ],
                                ),
                              ),

                            ],
                          ))
                    ],
                  ) )
            ],


      ),
    );
  }

}