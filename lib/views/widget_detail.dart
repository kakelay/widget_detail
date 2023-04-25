import 'package:flutter/material.dart';
import 'package:widget_detail/views/abouts/aboutus.dart';
import 'package:widget_detail/views/home/home.dart';
import 'package:widget_detail/views/login/login.dart';
import 'package:widget_detail/views/register/register.dart';
import 'package:widget_detail/views/setting/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var screens = [
    HomeScreen(),
    const SettingScreen(),
    const AboutUs(),
    Register(),
    const LoginPage(),
  ];

  var selectedIndex = 0;
  onBarItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        fixedColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        // unselectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: (index) {
          onBarItemTapped(index);
        },
        items: const [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Setting', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'About', icon: Icon(Icons.help)),
          BottomNavigationBarItem(label: 'Register', icon: Icon(Icons.app_registration_rounded)),
          BottomNavigationBarItem(label: 'Login', icon: Icon(Icons.login)),
        ],
      ),
    );
  }
}
