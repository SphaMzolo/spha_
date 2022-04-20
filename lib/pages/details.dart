// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/details.jpg',
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
          body: Stack(
            children: [
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 355, right: 20, left: 20),
                  child: Container(
                    width: 350,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/illu.png'),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290),
                child: Container(
                  height: 400.0,
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 67, 67, 67),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                          MediaQuery.of(context).size.width, 80.0),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    'Pressure',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    'Wind Speed',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Text(
                    'Sunrise',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Text(
                    'Sunset',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 226, 119, 19)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
