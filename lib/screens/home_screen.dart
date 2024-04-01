import 'dart:ui';

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:serrano/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final name = 'TRICIA SERRANO';
  final city = 'Quezon City';
  final email = 'sample@gmail.com';
  final Uri githubLink = Uri.parse('https://github.com/NoirHearts/');
  final Uri linkedinLink = Uri.parse('https://www.linkedin.com/in/npserrano/');

  final List<Widget> pages = [
    Container(
      alignment: Alignment.center,
      child: Text(proj1,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w600,
          ))),
    ),
    Container(
      alignment: Alignment.center,
      child: Text(proj2,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w600,
          ))),
    ),
    Container(
      alignment: Alignment.center,
      child: Text(proj3,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w600,
          ))),
    ),
    Container(
      alignment: Alignment.center,
      child: Text(proj4,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w600,
          ))),
    ),
  ];
  final PageController controller = PageController();

  final List<Widget> languages1 = [
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('Python',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('C',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('HTML',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('CSS',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
  ];
  final List<Widget> languages2 = [
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('TypeScript',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('React',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('Dart',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
    Row(children: [
      Icon(BootstrapIcons.check, color: Color(0xff5c6898)),
      Text('Flutter',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff606579),
            fontWeight: FontWeight.w500,
          ))),
    ]),
  ];
  Future<void> launchGithubUrl() async {
    try {
      await launchUrl(githubLink);
    } catch (err) {}
  }

  Future<void> launchLinkedinUrl() async {
    try {
      await launchUrl(linkedinLink);
    } catch (err) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 90,
          color: Color(0xff606579),
          // color: Color(0xffFfffff),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('CONTACT ME',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xffd1d5fa),
                        fontWeight: FontWeight.w600,
                      ))),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(email,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xfffdb3ca),
                        fontWeight: FontWeight.w400,
                      )))
                ],
              ),
              Column(children: [
                Text('SOCIALS',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd1d5fa),
                      fontWeight: FontWeight.w600,
                    ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 32,
                      icon:
                          Icon(BootstrapIcons.github, color: Color(0xffFdb3ca)),
                      onPressed: () {
                        launchGithubUrl();
                      },
                    ),
                    IconButton(
                      iconSize: 32,
                      icon: Icon(BootstrapIcons.linkedin,
                          color: Color(0xffFdb3ca)),
                      onPressed: () {
                        launchLinkedinUrl();
                      },
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
        backgroundColor: Color(0xfff1f2f2),
        key: _scaffoldKey,
        body: Container(
          child: Center(
            child: SafeArea(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(children: [
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 10, color: Color(0xfffdb3ca)),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/tricia.jpg')),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text('Hello, I\'m',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xff606579),
                            fontWeight: FontWeight.w500,
                          ))),
                      Text(name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 32,
                            color: Color(0xff5c6898),
                            fontWeight: FontWeight.w600,
                          ))),
                      Text('Computer Science Student',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff606579),
                            fontWeight: FontWeight.w500,
                          ))),
                      const SizedBox(height: 20),
                      const Divider(thickness: 1, color: Color(0xff606579)),
                      const SizedBox(height: 10),
                      ExpansionTile(
                          leading: const Icon(
                            BootstrapIcons.book,
                            color: Color(0xff5c6898),
                          ),
                          title: Text(
                            'EDUCATION',
                            style: TextStyle(
                                color: Color(0xff606579),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          collapsedShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          collapsedBackgroundColor: Color(0xfffdb3ca),
                          backgroundColor: Color(0xfffdb3ca),
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              // color: Color(0xfff1f2f2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Color(0xfff1f2f2),
                                  border: Border.all(
                                      color: Color(0xfffdb3ca), width: 3)),
                              padding: EdgeInsets.only(bottom: 4),
                              child: Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'University of the Philippines - Diliman',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff606579)),
                                    ),
                                    subtitle: Text(
                                      'B.S. Computer Science\n2025',
                                      style:
                                          TextStyle(color: Color(0xff606579)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ListTile(title: Text('This is tile number 1')),
                          ]),
                      const SizedBox(height: 16),
                      ExpansionTile(
                          leading: const Icon(
                            BootstrapIcons.briefcase,
                            color: Color(0xff5c6898),
                          ),
                          title: Text(
                            'EXPERIENCE',
                            style: TextStyle(
                                color: Color(0xff606579),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          collapsedShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          collapsedBackgroundColor: Color(0xfffdb3ca),
                          backgroundColor: Color(0xfffdb3ca),
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              // color: Color(0xfff1f2f2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Color(0xfff1f2f2),
                                  border: Border.all(
                                      color: Color(0xfffdb3ca), width: 3)),
                              padding: EdgeInsets.only(bottom: 4),
                              child: Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'D.W. Morgan',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff606579)),
                                    ),
                                    subtitle: Text(
                                      'Quality Assurance Intern - IT Team\nSeptember 2019 - December 2019',
                                      style:
                                          TextStyle(color: Color(0xff606579)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ListTile(title: Text('This is tile number 1')),
                          ]),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 3,
                            color: Color(0xfffdb3ca),
                          ),
                        ),
                        child: Column(children: [
                          Text('LANGUAGES AND FRAMEWORKS',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xff5c6898),
                                fontWeight: FontWeight.w600,
                              ))),
                          const SizedBox(height: 5),
                          Container(
                            height: 95,
                            child: Row(
                              children: [
                                Expanded(
                                    child: ListView(
                                  children: languages1,
                                )),
                                Expanded(
                                    child: ListView(
                                  children: languages2,
                                ))
                              ],
                            ),
                          )
                        ]),
                      ),
                      const SizedBox(height: 16),
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfffdb3ca)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text('PROJECTS',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff5c6898),
                                        fontWeight: FontWeight.w600,
                                      ))),
                                  const SizedBox(height: 2),
                                  Icon(
                                    BootstrapIcons.laptop,
                                    color: Color(0xff5c6898),
                                    size: 40,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 80,
                                width: 200,
                                child: PageView(
                                  controller: controller,
                                  children: pages,
                                ),
                              ),
                              Icon(
                                BootstrapIcons.chevron_right,
                                color: Color(0xff5c6898),
                                size: 20,
                              ),
                            ],
                          ))
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
