import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_navigation_web/models/MenuItem.dart';
import 'package:url_navigation_web/models/NavItem.dart';
import 'package:url_navigation_web/pages/AboutPage.dart';
import 'package:url_navigation_web/pages/HelpPage.dart';
import 'package:url_navigation_web/pages/HomePage.dart';
import 'package:url_navigation_web/pages/Notifications.dart';
import 'package:url_navigation_web/pages/ProfilePage.dart';
import 'package:url_navigation_web/pages/SettingsPage.dart';

class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({Key key, this.page, this.extra}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

List<MenuItem> menuItems = [
  MenuItem('home', Icons.home),
  MenuItem('about', Icons.pages_rounded),
  MenuItem('profile', Icons.person_rounded),
  MenuItem('settings', Icons.settings_rounded),
  MenuItem('help', Icons.help_rounded)
];

List<TabItem<dynamic>> _dynamicItems = [
  TabItem(icon: Icons.home, title: 'Home'),
  TabItem(icon: Icons.pages_rounded, title: 'Aboute'),
  TabItem(icon: Icons.person_rounded, title: 'Profile'),
  TabItem(icon: Icons.settings_rounded, title: 'Settings'),
  TabItem(icon: Icons.help_rounded, title: 'Help'),
];

List<String> pages = [
  'home',
  'about',
  'profile',
  'settings',
  'help',
  'notifications'
];

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex;

  void initState() {
    super.initState();
    _selectedIndex = pages.indexOf(widget.page);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (pages[index] == "about") {
      Navigator.pushNamed(context, '/main/${pages[index]}/Scott');
    } else {
      Navigator.pushNamed(context, '/main/${pages[index]}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("App Top Bar"),
          ],
        ),
        toolbarHeight: 70.0,
        automaticallyImplyLeading: false,
        elevation: 3,
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                var index = pages.indexOf("notifications");
                setState(() {
                  _selectedIndex = 4;
                });

                Navigator.pushNamed(context, '/main/notifications');
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 600
          ? ConvexAppBar.badge(
              {
                // 0: '99+',
              },
              badgeMargin: EdgeInsets.only(bottom: 50, left: 25),
              badgeColor: Colors.blueAccent,
              items: _dynamicItems,
              elevation: 3,
              onTap: _onItemTapped,
              initialActiveIndex: _selectedIndex > 4 ? 4 : _selectedIndex,
            )
          : null,
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width > 600 ? 200 : 0,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: menuItems.map((e) {
                  return NavItem(
                    selected:
                        menuItems.indexOf(e) == pages.indexOf(widget.page),
                    icon: e.icon,
                    text: e.name,
                    onTap: () {
                      if (menuItems.indexOf(e) == 1) {
                        Navigator.pushNamed(context,
                            '/main/${pages[menuItems.indexOf(e)]}/Scott');
                      } else {
                        Navigator.pushNamed(
                            context, '/main/${pages[menuItems.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Container(
                //width: 500,
                child: Center(
                  child: IndexedStack(
                    index: pages.indexOf(widget.page),
                    children: [
                      Home(),
                      About(widget.extra),
                      Profile(),
                      Settings(),
                      Help(),
                      Notifications()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
