import 'package:fluttercvproj/CvMalek.page.dart';
import 'package:fluttercvproj/cvSolaima.page.dart';
import 'package:fluttercvproj/myDrawer.page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Builder(builder: (context) {
                    return IconButton(
                      icon: Icon(Icons.menu, color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  }),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CvSolaima()),
                );
              },
              child: Image.asset(
                'assets/images/solaima.png',
                height: 250,
                width: 250,
              ),
            ),
            Text(
              "Bellaaj Solaima",
              style: GoogleFonts.lato(
                fontSize: 27,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "ÉTUDIANTE EN INGÉNIERIE",
              style: GoogleFonts.lato(
                fontSize: 18,
                color: const Color(0xFF74767D),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 2,
              color: Colors.green,
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CvMalek()),
                );
              },
              child: Image.asset(
                'assets/images/malek.png',
                height: 250,
                width: 250,
              ),
            ),
            Text(
              "Karra Malek",
              style: GoogleFonts.lato(
                fontSize: 27,
                color: const Color(0xff139f9f),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "ÉTUDIANTE EN INGÉNIERIE",
              style: GoogleFonts.lato(
                fontSize: 18,
                color: const Color(0xFF74767D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
