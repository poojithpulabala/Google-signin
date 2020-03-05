import 'package:emoji/CardScreen.dart';
import 'package:emoji/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:WalletApp()
    );
  }
}



class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  @override
  var screen=[
    HomeScreen(),
    CardScreen(),
  ];
  int selectedTab=0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Text("Card"),
          )
         ],
         onTap: (index){
           setState(() {
             selectedTab=index;
           });
         },
         showSelectedLabels: true,
         iconSize: 30,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          elevation: 0,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


        body: screen[selectedTab],
    );
  }
}