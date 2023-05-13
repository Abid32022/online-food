import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/widgets/textfield.dart';
import '../../utils/app_Colors.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../checkout4_Screen/checkout4_Screen.dart';

class checkout3 extends StatelessWidget {
  const checkout3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 50,),
            homeBar(),
            SizedBox(height: 21,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              height: 56,
              width: Get.width,
              color: AppColors.sphercolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                      onTap:Get.back,
                      child: Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,)),

                  Column(
                    children: [
                      Text("Order summary delivery",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.spheretextc)),),
                      Text("Step 3/4",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),
                      SizedBox(height: 11,),

                    ],
                  ),
                  Text(""),

                ],
              ),
            ),
            SizedBox(height: 11,),
            Row(
              children: [SizedBox(width: 17,),
                Text("Ordered",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e)),),
              ],
            ),
            SizedBox(height: 13,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 440,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black2e.withOpacity(0.10),
                    blurRadius:2 ,
                    spreadRadius: 2,
                    offset: Offset(0,2),
                  ),
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [

                      Text("Coconut sphere",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),
                      SizedBox(width: 11,),
                      Text("(3)",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),
                      Spacer(),
                      Text("56.00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

                    ],
                  ),SizedBox(height: 16,),
                  Row(
                    children: [

                      Text("Raspberry bush",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),
                      SizedBox(width: 11,),
                      Text("(2)",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),
                      Spacer(),
                      Text("56.00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(
                    color: AppColors.black2e.withOpacity(0.8),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),

                      Text("Home",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery date",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),

                      Text("Sun, August 26",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery time",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),

                      Text("12H: 30   - 13h:25",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping cost",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),

                      Text("4.00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

                    ],

                  ),
                  SizedBox(height: 16,),
                  Divider(
                    color: AppColors.black2e.withOpacity(0.8),
                  ),

                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("PROMO CODE",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*16,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e)),),

                      Container(
                          width: MySize.scaleFactorWidth*170,
                          child: CustomTextField(a: true,prefix: false,hint: "Add promo code",border: true,suffix: false,isobscure: false,controller: TextEditingController(),Maxlines: 1,p: false))
                      // Container(
                      //   height: MySize.scaleFactorHeight*56,
                      //   width: MySize.scaleFactorWidth*180,
                      //   color: Colors.white,
                      //   // color: Colors.black12,
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //       filled: true,
                      //       fillColor: AppColors.white.withOpacity(0.37),
                      //       disabledBorder: InputBorder.none,
                      //       hintText: 'Add promo code',
                      //       hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 0.7)),
                      //       border: OutlineInputBorder(
                      //         borderSide: new BorderSide(color: Colors.black12),
                      //         borderRadius: BorderRadius.circular(8),
                      //       ),
                      //       enabledBorder:  OutlineInputBorder(
                      //         borderSide: new BorderSide(color: Colors.black12),
                      //         borderRadius: BorderRadius.circular(8),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),

                  SizedBox(height: 28,),

                ],
              ),
            ),
            SizedBox(height: 28,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),

              height: 60,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black2e.withOpacity(0.10),
                      blurRadius:2 ,
                      spreadRadius: 2,
                      offset: Offset(0,2),
                    ),
                  ]
              ),
                    child:CustomTextField(a: true,prefix: true,prefix_Icon: "assets/icons/shop.png",hint: "The Gourmet Sphere",border: false,suffix: false,isobscure: false,controller: TextEditingController(),Maxlines: 1,p: true)),

        // TextField(
                //   decoration: InputDecoration(
                //     filled: true,
                //     fillColor: AppColors.white.withOpacity(0.37),
                //     disabledBorder: InputBorder.none,
                //     hintText: 'The Gourmet Sphere',
                //     prefixIcon: Image.asset("assets/icons/shop.png",scale: 4,color: Color(0xff937F87).withOpacity(0.8)),
                //     hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 0.7)),
                //     border: OutlineInputBorder(
                //       borderSide: new BorderSide(color: Colors.black12),
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //     enabledBorder:  OutlineInputBorder(
                //       borderSide: new BorderSide(color: Colors.black12),
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //   ),
                // ),

            SizedBox(height: 35,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 60,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black2e.withOpacity(0.10),
                      blurRadius:2 ,
                      spreadRadius: 2,
                      offset: Offset(0,2),
                    ),
                  ]

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TOTAL",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),
                  SizedBox(width: 5,),
                  Text("178.00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40))),),

                ],
              ),
            ),
            SizedBox(height: 34,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 17),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("To validate",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.white)),),
                    SizedBox(width: 40,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black2e.withOpacity(0.25),
                              blurRadius: 4,
                              spreadRadius: 0,
                              offset:Offset(0,4),
                            ),
                          ]
                      ),
                    )
                  ],
                ),

                height: 64,
                minWidth: Get.width,
                color: AppColors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                onPressed: (){
                  Get.to(()=>checkout4());
                },
              ),

            ),
            SizedBox(height: 23,),
          ],
        ),
      ),
    );
  }
}
