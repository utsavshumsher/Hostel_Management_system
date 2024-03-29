import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//       ),
//       home: AboutUsPage(),
//     );
//   }
// }

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: Text(
          "About Us",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(50, 50, 50, 1.0)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 8),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      items: [
                        Image.asset("assets/images/img_4.png"),
                        Image.asset("assets/images/img.png"),
                        Image.asset("assets/images/img_1.png"),
                        Image.asset("assets/images/img_2.png"),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == _current
                              ? _buildDot(context, true)
                              : _buildDot(context, false),
                      ],
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        "Sleepholic",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "This app is developed for managing hostel operations such as room allocation, fee management, and other activities. It aims to provide a seamless and efficient experience for both hostel staff and residents.",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 400,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(
                        // color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          // Open the company website or email
                        },
                        child: Text("Contact Us"),
                      ),
                    ),
                    SizedBox(height: 32),
                    Center(
                      child: Text(
                        "Our Location",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 16),
                    Image.asset("assets/images/img_3.png"),
                    SizedBox(height: 32),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 8),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Text(
                      "Services Provided",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: [
                        _buildServiceTile(
                            "Room Allocation",
                            "All rooms are allocated based on availability and preference.",
                            "assets/images/1.png"),
                        SizedBox(height: 16),
                        _buildServiceTile(
                            "Fee Management",
                            "Pay your fees online with secure transactions.",
                            "assets/images/2.png"),
                        SizedBox(height: 16),
                        _buildServiceTile(
                            "Maintenance",
                            "Report any maintenance issues and track its status.",
                            "assets/images/3.png"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(BuildContext context, bool isActive) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Theme.of(context).primaryColor : Colors.grey,
      ),
    );
  }

  Widget _buildServiceTile(String title, String description, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 8),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath, width: 48, height: 48),
              SizedBox(height: 16),
              Text(title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 8),
              Text(description),
            ],
          ),
        ),
      ],
    );
  }
}
