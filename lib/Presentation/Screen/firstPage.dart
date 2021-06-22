import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(40),
      alignment: Alignment.center,
      color: Color(0xffEAB9F3),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Rattan Armchair',
                style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
            Container(
              margin: EdgeInsets.only(top: 70),
              height: 550.h,
              decoration: BoxDecoration(
                color: Color(0xffFFE2F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 35, bottom: 35),
              child: Text(
                'Airy Chair with an embracing feel makes it perfect to curl up in.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/secondPage');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFE2F8),
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: 80.h,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Continue',
                  style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
