import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/utils/app_Colors.dart';

Widget TextWidgetPoppins({required String title,Color color = AppColors.black2e, double fontSize = 12, FontWeight fontWeight = FontWeight.normal}){
  return Text(title,style: GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,

  ));
}

Widget TextWidgetInter({required String title,Color color = AppColors.black2e, double fontSize = 12, FontWeight fontWeight = FontWeight.normal,TextAlign align = TextAlign.start,}){
  return Text(title,style: GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      // height: 1.5,
      // wordSpacing: 5

  ),
    textAlign: align,
  );
}

Widget TextWidgetNunitoWithoutSpacing({required String title,Color color = Colors.black, double fontSize = 12, FontWeight fontWeight = FontWeight.normal,TextAlign align = TextAlign.start}){
  return Text(title,style: GoogleFonts.nunitoSans(
    fontSize: fontSize,

    fontWeight: fontWeight,
    color: color,
    height: 1.5,

  ),
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );


}



Widget TextWidgetMerri({required String title,Color color = Colors.black, double fontSize = 12, FontWeight fontWeight = FontWeight.normal,TextAlign align = TextAlign.start}){
  return Text(title,style: GoogleFonts.merriweather(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
      wordSpacing: 5
  ),
    textAlign: align,
  );
}