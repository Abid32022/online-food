import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_Colors.dart';
import '../utils/size_config.dart';

class cabbageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return Container(
      padding: EdgeInsets.only(right: 22,),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(
            top: 8,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10,top: 20,),
              width: MySize.scaleFactorWidth*240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.04),
                    blurRadius: 16,
                    spreadRadius: 4,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.white,
                    width: MySize.scaleFactorWidth*220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MySize.scaleFactorHeight*12,
                        ),
                        Text(
                          "Coconut sphere sphere",
                          style: GoogleFonts.getFont(
                            'Poppins',
                            textStyle: TextStyle(
                              fontSize: MySize.scaleFactorHeight*18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.07,
                              color: AppColors.black2e,
                            ),
                          ),
                          maxLines: 2,
                          // overflow: TextOverflow.ellipsis,
                        ),

                        SizedBox(
                          height: MySize.scaleFactorHeight*6,
                        ),

                        Row(
                          children: [
                            Text(
                              "14,00 €",
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                  fontSize: MySize.scaleFactorHeight*12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.07,
                                  color: AppColors.black2e,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MySize.scaleFactorHeight*4,
                            ),
                            Text(
                              "16,00 €",
                              style: GoogleFonts.getFont(
                                'Poppins',
                                textStyle: TextStyle(
                                    fontSize: MySize.scaleFactorHeight*12,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.07,
                                    color: AppColors.black2e.withOpacity(0.44),
                                    decoration: TextDecoration.lineThrough,
                                  ),
                              ),
                            ),
                            ///piece
                            ///
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: MySize.scaleFactorWidth*2,),
                                Text(
                                  "1 pièce",
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    textStyle: TextStyle(
                                      fontSize: MySize.scaleFactorHeight*12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.07,
                                      color: AppColors.black2e.withOpacity(0.50),
                                    ),
                                  ),
                                ),

                              SizedBox(width: MySize.scaleFactorWidth*29,),
                                ///Timer
                                Text(
                                  "48h",
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    textStyle: TextStyle(
                                        fontSize: MySize.scaleFactorHeight*12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.07,
                                        color: AppColors.pink),
                                  ),
                                ),

                                /// Timer
                                ///
                                Image.asset(
                                  "assets/icons/timer-start.png",
                                  height: MySize.scaleFactorHeight*24,
                                  width: MySize.scaleFactorWidth*24,
                                ),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8)
                    ),

                    child: ClipRRect(
                        borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(8)),
                        child: Image.asset(
                          "assets/icons/coconut.png",
                          height: MySize.scaleFactorHeight*110,
                          width: MySize.scaleFactorWidth*114,
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
