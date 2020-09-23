
import 'package:flutter/material.dart';
import 'package:marian/pages/Home.dart';
import 'package:marian/pages/PhotoGallery.dart';
import 'package:marian/pages/PrayerRequest.dart';
import 'package:marian/pages/UpcomingEvents.dart';
import 'package:marian/pages/WriteUs.dart';
import 'package:marian/widgets/MyAppBar.dart';
import 'package:marian/widgets/MyDrawerMenu.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  final _pageOptions = [
    Home(),
    PhotoGallery(),
    UpcomingEvents(),
    WriteUs(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawerMenu(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: MyAppBar(_scaffoldKey),
        ),
        bottomNavigationBar: _buildNavigation(_selectedIndex, _onItemTapped,context),
        body: _pageOptions[_selectedIndex],
      ),
    );
  }
}

Widget _buildNavigation(_selectedIndex, _onItemTapped,context) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    unselectedItemColor: Color(0xffCFAA76),
    selectedItemColor: Colors.red,
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    backgroundColor: Color(0xffFEFFD6),
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        title: Text(""),
        icon: ImageIcon(AssetImage("assets/icons/HomeD.png")),
      ),
      BottomNavigationBarItem(
        title: Text(""),
        icon: ImageIcon(AssetImage("assets/icons/YoutubeIconRed.png")),

      ),
      BottomNavigationBarItem(
        title: Text(""),
        icon: ImageIcon(AssetImage("assets/icons/CalendarIconRed.png")),
      ),
      BottomNavigationBarItem(
        title: Text(""),
        icon: ImageIcon(AssetImage("assets/icons/ContactD.png")),
      ),
    ],
  );
}
