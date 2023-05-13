import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_Colors.dart';
import '../utils/app_constant.dart';

Widget ExpnsionTile(){
  return   Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),

        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.05),
                    blurRadius: 8,
                    spreadRadius: 8,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],),
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: Colors.black,
                  title: Text("Détails",style: GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),),
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(AppConstant.cocounotmousse,style: GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.black2e.withOpacity(0.50))),)
                    ),
                    SizedBox(height: 23,)
                  ],
                ),
              ),
            );
          },),
      ),
      /// another one
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        // height: 220,
        // width: Get.width,
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.05),
                    blurRadius: 8,
                    spreadRadius: 8,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],),

              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: Colors.black,
                  title: Text("Allergènes",style: GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),),
                  children: [
                    ListTile(
                      leading: Text("Milk",style:GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.black2e.withOpacity(0.53))),),
                      trailing: Text(('Gluten'),style: GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.black2e.withOpacity(0.53)),),
                      ),),
                    ListTile(
                      leading: Text("Eggs",style:GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.black2e.withOpacity(0.53))),),
                      trailing: Text(('Nuts'),style: GoogleFonts.getFont("Poppins",textStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.black2e.withOpacity(0.53))),),),
                  ],
                ),
              ),
            );
          },),
      ),


    ],
  );
}