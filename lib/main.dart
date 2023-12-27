import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/alarmscreen.dart';
import 'package:tab_bar/Screens/contactscreen.dart';
import 'package:tab_bar/Screens/emailscreen.dart';
import 'package:tab_bar/Screens/homescreen.dart';
import 'package:tab_bar/Screens/personscreen.dart';
import 'package:tab_bar/Screens/searchscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "TABBAR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //centerTitle: true,
            backgroundColor: Colors.cyanAccent,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Person",
                ),
                Tab(
                  icon: Icon(Icons.email_rounded),
                  text: "Email",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
                Tab(
                  icon: Icon(Icons.contact_emergency),
                  text: "Contact",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Homescreen(),
              PersonScreen(),
              EmailScreen(),
              AlarmScreen(),
              ContactScreen(),
              SearchScreen(),
            ],
          ),
        ));
  }
}
