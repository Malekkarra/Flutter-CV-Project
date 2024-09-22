// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fluttercvproj/myDrawer.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CvSolaima extends StatelessWidget {
  const CvSolaima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Image.asset(
                  'assets/images/solaima.png',
                  height: 250,
                  width: 250,
                ),
                SizedBox(height: 20),
                Text(
                  "Bellaaj Solaima",
                  style: GoogleFonts.lato(
                    fontSize: 27,
                    color: const Color(0xff139f9f),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Future Ingénieur",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    color: const Color(0xFF74767D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Profil",
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 22,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff139f9f),
                  ),

                  child: Text(
                    "Étudiante en deuxième année de génie logiciel et informatique décisionnelle, "
                        "je possède une solide formation théorique associée à une passion pour la résolution de problèmes complexes. "
                        "Mon parcours m'a permis de développer des compétences clés dans l'analyse de données et la création de solutions logicielles efficaces. "
                        "Motivée et proactive, je cherche à mettre en pratique mes connaissances pour contribuer à des projets innovants et relever de nouveaux défis.",
                    style: const TextStyle(
                      color: Color(0xFF2C352D),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Education",
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 22,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                buildEducationContainer(
                  context,
                  "2022-Présent",
                  "IIT",
                  "Genie Informatique | Sfax",
                ),
                buildEducationContainer(
                  context,
                  "2019 - 2022",
                  "ISIMS ",
                  "Licence en Big Data et Analyse de Données | Sfax",
                ),
                buildEducationContainer(
                  context,
                  "2019 ",
                  "LYCÉE MONJI SLIM",
                  "Baccalauréat en Sciences Expérimentales  | Sfax",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Formation",
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 22,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          buildFormation2Card(
                            context,
                            "Udemy",
                            "python developer essentials immersive bootcamp",
                            "2021",
                            const Color(0xFFB6D8F2),
                          ),
                          buildFormation2Card(
                            context,
                            "Coursera",
                            "Formation"
                                " HTML "
                                "HyperText Markup Language",
                            "2020",
                            const Color(0xFFF7F6CF),
                          ),
                          buildFormation2Card(
                            context,
                            "ILC",
                            "Formation anglais niveau B1",
                            "2023",
                            const Color(0xFF8AC185),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Experience",
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 22,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          buildFormationCard(
                            context,
                            "Université Privée Nord-Américaine - Sfax",  // Title
                            "Stagiaire en Service Scolarité",  // Subtitle
                            "Juin-Août 2023",  // Year
                            Colors.lightGreen,  // Background Color
                          ),
                          buildFormationCard(
                            context,
                            "Discovery Informatique - Tunisie",  // Title
                            "Stagiaire en BI et analyse de données.",  // Subtitle
                            "Février-Mai 2022",  // Year
                            Colors.grey,  // Background Color
                          ),
                          buildFormationCard(
                            context,
                            "Primatec Engineering - Sfax",  // Title
                            "Stagiaire developpeur en python",  // Subtitle
                            "Juillet-Août 2021",  // Year
                            Colors.green,  // Background Color
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Compétence",
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 22,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF16181D),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildSkillContainer("assets/images/python.png", "python",
                            Colors.orange.shade300),
                        buildSkillContainer("assets/images/cloud.png",
                            "Cloud", Colors.white),
                        buildSkillContainer("assets/images/css.png", "CSS",
                            Colors.blue.shade300),
                        buildSkillContainer("assets/images/js.png",
                            "JavaScript", Colors.yellow.shade300),
                        buildSkillContainer("assets/images/PHP.png", "PHP",
                            Colors.purple.shade300),
                        buildSkillContainer("assets/images/BI.png", "powerBI",
                            Colors.blue[200]!),
                        buildSkillContainer(
                            "assets/images/c.png", "C", Colors.blue.shade500),
                        buildSkillContainer("assets/images/cpp.png", "C++",
                            Colors.lightBlue.shade300),
                        buildSkillContainer("assets/images/dart.png", "Dart",
                            Colors.cyanAccent),
                        buildSkillContainer("assets/images/flutter.png",
                            "Flutter", Colors.blue.shade500),
                        buildSkillContainer(
                            "assets/images/java.png", "Java", Colors.blue[200]!),
                        buildSkillContainer("assets/images/sql.png", "SQL",
                            Colors.deepPurpleAccent.shade400),
                        buildSkillContainer("assets/images/Unix.png", "Unix",
                            Colors.yellow[300]!),
                        buildSkillContainer("assets/images/MySql.png",
                            "MySql", Colors.white),
                        buildSkillContainer("assets/images/Photoshop.png",
                            "Photoshop", Colors.blue.shade200),
                        buildSkillContainer("assets/images/illustrator.png",
                            "illustrator", Colors.brown[700]!),
                        buildSkillContainer("assets/images/html.png",
                            "Html", Colors.purpleAccent[200]!),
                        buildSkillContainer("assets/images/Premiere.png",
                            "Premiere", Colors.pink[200]!),
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Compétence Linguistique",
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 22,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF16181D),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Arabe",
                              style: GoogleFonts.lato(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Native",
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Color(0xFF6E717E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Francais",
                              style: GoogleFonts.lato(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " Conversational",
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Color(0xFF6E717E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Anglais",
                              style: GoogleFonts.lato(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " Conversational",
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Color(0xFF6E717E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: Color(0xff139f9f),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8.0), // Provide a consistent margin around the container
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Adresse section
                                  Text(
                                    "Adresse",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Rue de Tunis Km 11 cite ElOns, 3021",
                                    style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: Color(0xFF4E634E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Space between sections

                                  // Phone section
                                  Text(
                                    "Phone",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "+216 24 270 133",
                                    style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: Color(0xFF4E634E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10), // Space between sections

                                  // Email section
                                  Text(
                                    "Email",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "bellaajsolaima@gmail.com",
                                    style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: Color(0xFF4E634E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEducationContainer(BuildContext context, String year,
      String institution, String description) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF16181D),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                year,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                institution,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: const Icon(FontAwesomeIcons.graduationCap,color: Colors.black,),
              ),
            ],
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF6E717E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFormationCard(BuildContext context, String title, String subTitle,
      String year, Color color) {
    return Container(
      width: 280,
      height: 150,
      margin: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF2C352D),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              subTitle,
              style: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 5),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Text(
                    year,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildFormation2Card(BuildContext context, String title, String subTitle,
      String year, Color color) {
    return Container(
      width: 180,
      height: 150,
      margin: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF2C352D),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              subTitle,
              style: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 5),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Text(
                    year,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget buildSkillContainer(String imagePath, String label, Color color) {
    return Container(
      width: 90,
      height: 105,
      margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(imagePath),
              width: 50,
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              label,
              style: GoogleFonts.lato(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
