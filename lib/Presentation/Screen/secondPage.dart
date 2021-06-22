import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children:[
            Stack(
              children:<Widget> [
                Container(
                  height: 520.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF9B2F7),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40) ),
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 17.0,
                      offset: Offset(0,10),
                    )
                    ],

                    // border: Border.all(width: 2),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 40),
                    padding: EdgeInsets.only(left: 7),
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFE2F8),
                    ),
                    child: InkWell(
                      onTap: (){Navigator.of(context).pushNamed('/firstPage');},
                        child: Icon(Icons.arrow_back_ios,size: 20,)),
                  ),
                ),//button

              ]
          ),
            Container(
            margin: EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Container(
                  child: Text('Hand-Woven Rattan Armchair',
                    style: GoogleFonts.lato(
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),//text
                SizedBox(height: 15.h),
                Container(
                  child: Row(
                    children:[
                      RatingBar.builder(
                        itemSize: 25,
                      initialRating: 4,
                      itemCount: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemBuilder:(context,_)=>Icon(Icons.star,color: Colors.amber,),
                      onRatingUpdate:(rating){
                        setState(() {
                         //var _rating = rating;
                        });
                      },
                      ),
                      SizedBox(width: 20,),
                      Text('4.0',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

                    ],
                  ),
                ),//Rating
                SizedBox(height: 15.h),
                Container(
                  child: Text('Furniture made of natural fiber is made of lightweight ,sturdy and durable.A great way to invite the nature into your home.',
                    style: GoogleFonts.lato(
                        fontSize: 16,),
                    textAlign:TextAlign.start,
                  ),
                ),//text
                SizedBox(height: 15.h),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Materials & Ecology',style: GoogleFonts.lato(
                          fontSize: 20,fontWeight: FontWeight.bold),),
                      Icon(
                        Icons.arrow_forward_ios_outlined,size: 20,
                      )


                    ],
                  ),
                ),//card1
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey),),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Packaging & Product Size',style: GoogleFonts.lato(
                          fontSize: 20,fontWeight: FontWeight.bold),),
                      Icon(
                        Icons.arrow_forward_ios_outlined,size: 20,
                      )


                    ],
                  ),
                ),//card2
                SizedBox(height: 15.h),
                Text('You have 30 days to change your mind',
                  style: GoogleFonts.lato(
                      fontSize: 16,),
                )

              ],
            ),

          ),




          ],

        ),
      ),
    );
  }
}