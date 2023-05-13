import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/widgets/text_widget.dart';
import '../utils/app_constant.dart';

Widget Appbar(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        SizedBox(height: 60,),
        Row(
          children: [
            Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,)
          ],
        ),
      ],
    ),
  );
}

Widget bottombar(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        SizedBox(height: 60,),
        Row(
          children: [
            Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,)
          ],
        ),
      ],
    ),
  );
}
Widget homeBar(){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [

                Image.asset("assets/icons/menu.png",height: 24,width: 24,),
                  SizedBox(width: 7,),
                  Text("Menu",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,letterSpacing: 0.7)),),
                ],
              ),
            ),

            Image.asset("assets/icons/monchester.png",height: 29,width: 128,),

            Image.asset("assets/icons/bag.png",height: 24,width: 24,),
          ],
        ),
      ),
    ],
  );
}
