// ignore_for_file: prefer_const_constructors

import 'package:fluttercvproj/CvMalek.page.dart';
import 'package:fluttercvproj/cvSolaima.page.dart';
import 'package:fluttercvproj/localisation.dart';
import 'package:fluttercvproj/login.page.dart';
import 'package:fluttercvproj/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    late SharedPreferences prefs;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/drawerimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Cv Bellaaj Solaima',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CvSolaima()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Cv Karra Malek',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CvMalek()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Localisation Malek ',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapPage(
                      myLocation: LatLng(34.84048686842769, 10.761678378178342)),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'Localisation Solaima ',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapPage(
                      myLocation: LatLng(34.84048686842769, 10.761678378178342)),
                ),
              );
            },
          ),
          ListTile(
            title: Row(
              children: [
                Text(
                  'Light/Dark Mode ',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: const Color(0xff139f9f),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                InkWell(
                  child: Image.asset(
                    _isDarkMode
                        ? "assets/images/night-mode.png"
                        : "assets/images/light-mode.png",
                    width: 50,
                    height: 50,
                  ),
                  onTap: () {
                    setState(() {
                      _isDarkMode = !_isDarkMode;
                    });
                    themeProvider.toggleTheme();
                  },
                )
              ],
            ),
          ),
          ListTile(
            title: Container(
              height: 2,
              color: Color(0xff139f9f),
            ),
          ),
          ListTile(
            title: Text(
              'Logout',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () async {
              prefs = await SharedPreferences.getInstance();
              if (prefs.getString("username") == "googleConnected") {
                final GoogleSignIn googleSignIn = GoogleSignIn();
                await googleSignIn.signOut();
              }
              prefs.remove("connecte");
              prefs.remove("username");
              prefs.remove("password");
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
