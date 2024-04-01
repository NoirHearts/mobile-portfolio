import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final proj1 = 'Pybilisan';
  final desc1 =
      'A 2D top-view endless running game involving animal characters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          child: Center(
            child: SafeArea(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(proj1,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                            ))),
                        // const SizedBox(height: 5),
                        Text(desc1,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                            ))),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
