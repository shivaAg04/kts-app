import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kts/Repo/repo.dart';
import 'package:kts/const/fonts.dart';
import 'package:kts/screens/home_screen.dart';
import 'package:kts/screens/teachers/teachers.dart';
import 'package:kts/screens/teams/team.dart';
import 'package:line_icons/line_icons.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Repo.fetchUpcomingEventsData();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Likes',
      style: KtsFont.optionStyle,
    ),
    TeamScreen(),
    TeacherScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.yellow,
              hoverColor: Colors.yellow,
              gap: 8,
              activeColor: Colors.red,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.book,
                  text: 'Magzine',
                ),
                GButton(
                  icon: LineIcons.peopleCarry,
                  text: 'Team',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Faculty',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
