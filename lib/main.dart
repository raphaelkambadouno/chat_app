import 'package:chat_app/home_page.dart';
import 'package:chat_app/pages/add_event_page.dart';
import 'package:chat_app/pages/event_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  setcurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Accueil"),
            Text("Liste des Conferences"),
            Text("Formulaire")

          ][_currentIndex],
        ),
        body: [
          HomePage(),
          EventPage(),
          AddEventPage(),
        ]
        [_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setcurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          iconSize: 35,
          elevation: 8,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil'
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Planing'
              ),

               BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Ajout'
              )
              ],
        ),
      ),
    );
  }
}