// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/models/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/theme.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'MegaWeather',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 43,
                color: Colors.white,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 67, 67, 67),
                      ),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 67, 67, 67),
                      ),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 67, 67, 67),
                    border: OutlineInputBorder(),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Bloemfontein',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'icon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  '16 °C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 350.0,
                    decoration: new BoxDecoration(
                      color: Color.fromARGB(255, 67, 67, 67),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(
                            MediaQuery.of(context).size.width, 80.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: Text(
                        'Description',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Center(
                      child: Text(
                        'Feels like',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Center(
                      child: Text(
                        'Humidity',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RouteManager.secondPage);
                        },
                        child: Text('Details'),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 226, 119, 19)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
