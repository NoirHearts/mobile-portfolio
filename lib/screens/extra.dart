import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:serrano/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final name = 'Tricia Serrano';
  final city = 'Quezon City';
  final email = 'sample@gmail.com';
  final languages =
      'Python   |   C   |   HTML   |   CSS   |   React   |   Dart';
  final Uri githubLink = Uri.parse('https://github.com/NoirHearts/');
  final Uri linkedinLink = Uri.parse('https://www.linkedin.com/in/npserrano/');

  final List<Widget> pages = [
  Column(children: [
  Text(proj1,
  textAlign: TextAlign.center,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xff000000),
  fontWeight: FontWeight.w600,
  ))),
  const SizedBox(height: 8),
  Text(desc1,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 12,
  color: Color(0xff000000),
  fontWeight: FontWeight.w400,
  ))),
  ]),
  Column(children: [
  Text(proj2,
  textAlign: TextAlign.center,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xff000000),
  fontWeight: FontWeight.w600,
  ))),
  const SizedBox(height: 8),
  Text(desc2,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 12,
  color: Color(0xff000000),
  fontWeight: FontWeight.w400,
  ))),
  ]),
  Column(children: [
  Text(proj3,
  textAlign: TextAlign.center,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xff000000),
  fontWeight: FontWeight.w600,
  ))),
  const SizedBox(height: 8),
  Text(desc3,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 12,
  color: Color(0xff000000),
  fontWeight: FontWeight.w400,
  ))),
  ]),
  Column(children: [
  Text(proj4,
  textAlign: TextAlign.center,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xff000000),
  fontWeight: FontWeight.w600,
  ))),
  const SizedBox(height: 8,
  Text(desc4,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 12,
  color: Color(0xff000000),
  fontWeight: FontWeight.w400,
  ))),
  ]),
  ];

  final PageController controller = PageController();

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
  color: Color(0xff000000),
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
  color: Color(0xffa9dfe2),
  fontWeight: FontWeight.w600,
  ))),
  const SizedBox(
  height: 12,
  ),
  Text(email,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xffa9dfe2),
  fontWeight: FontWeight.w400,
  )))
  ],
  ),
  Column(children: [
  Text('SOCIALS',
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 12,
  color: Color(0xffFdb3ca),
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
  backgroundColor: Color(0xffD1d5fa),
  key: _scaffoldKey,
  body: Container(
  // decoration: BoxDecoration(
  //     gradient: LinearGradient(
  //         begin: Alignment.topRight,
  //         end: Alignment.bottomLeft,
  //         colors: [
  //       // Color(0xff7d89a3),
  //       // Color(0xff7d89a3),
  //       // Color(0xffffe89a),
  //       // Color(0xff46040e),
  //       Color(0xfffdb3ca),
  //       // Color(0xfffdb3ca),
  //       // Color(0xffa9dfe2),
  //       Color(0xffd1d5fa),
  //       Color(0xff5c6898),
  //     ])
  // ),
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
  Border.all(width: 10, color: Color(0xffffffff)),
  image: DecorationImage(
  fit: BoxFit.fill,
  image: AssetImage('assets/images/tricia3.png')),
  ),
  ),
  const SizedBox(height: 20),
  Stack(children: [
  // Text(name,
  //     style: GoogleFonts.raleway(
  //         textStyle: TextStyle(
  //       fontSize: 30,
  //       // color: Color(0xfffdb3ca),
  //       fontWeight: FontWeight.w600,
  //       foreground: Paint()
  //         ..style = PaintingStyle.stroke
  //         ..strokeWidth = 2
  //         ..color = Color(0xff000000),
  //     ))),
  Text(name,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 30,
  color: Color(0xffFfffff),
  fontWeight: FontWeight.w600,
  )))
  ]),
  // const SizedBox(height: 5),
  Text(city,
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 18,
  color: Color(0xff000000),
  fontWeight: FontWeight.w400,
  ))),
  const SizedBox(height: 10),
  const Divider(
  height: 10, thickness: 2, color: Color(0xfffdb3ca)),
  const SizedBox(height: 10),
  SizedBox(
  child: Container(
  child: Column(children: [
  Text('LANGUAGES AND FRAMEWORKS',
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xff000000),
  fontWeight: FontWeight.w500,
  ))),
  const SizedBox(height: 10),
  Text(languages),
  ]))),
  const SizedBox(height: 10),
  const Divider(
  height: 10, thickness: 2, color: Color(0xff000000)),
  const SizedBox(height: 10),
  Text('PROJECTS',
  style: GoogleFonts.poppins(
  textStyle: TextStyle(
  fontSize: 14,
  color: Color(0xff000000),
  fontWeight: FontWeight.w500,
  ))),
  const SizedBox(height: 10),
  Icon(
  BootstrapIcons.laptop,
  color: Color(0xff5c6898),
  size: 50,
  ),
  SizedBox(
  height: 150,
  child: PageView(
  controller: controller,
  children: pages,
  ),
  ),
  ]),
  ),
  ),
  ),
  ),
  ),
  ));
  }
}
