import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/utils/app_Colors.dart';
import 'package:thestart/utils/app_constant.dart';
import 'package:thestart/views/bottom_navigation_bar/bottom_NavigationBar.dart';
import 'package:thestart/widgets/text_widget.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../../widgets/button.dart';
import '../../widgets/textfield.dart';
import '../sign_upp/sign_Up.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
          Column(
              children: [
                Appbar(),
            SizedBox(height: 52,),

            TextWidgetPoppins(title: AppConstant.connection,fontSize: 24,fontWeight: FontWeight.w700,),

                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Get.to(()=>sign_Up());
                  },
                    child:
                    TextWidgetInter(title: AppConstant.seeconector,fontWeight: FontWeight.w600,fontSize: 12,color: AppColors.black93),
                ),

                SizedBox(height: 16,),

              Container(
                  margin: EdgeInsets.symmetric(horizontal: 17),
                  child: CustomButton(title: AppConstant.facebook, ontap:(){}, context:context,image:"assets/icons/facebook.png" ,color: AppColors.facebook)),

                SizedBox(height: 15,),

                Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    child: CustomButton(title: AppConstant.Google, ontap:(){}, context:context,image:"assets/icons/google.png",color: AppColors.Google )),

                SizedBox(height: 30,),

                TextWidgetInter(title: AppConstant.seeconector,fontWeight: FontWeight.w600,fontSize: 14,color: AppColors.black93),
                 SizedBox(height: 24,),

                Row(
                  children: [
                    SizedBox(width: 17,),

                    TextWidgetPoppins(title: AppConstant.mail,fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.black2e),
                  ],
                ),

                SizedBox(height: 4,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                 child: CustomTextField(a: true,
                     prefix: true,
                     prefix_Icon: "assets/icons/mail.png",
                     hint: "The Gourmet Sphere",
                     border: true,
                     suffix: false,
                     isobscure: false,
                     controller: TextEditingController(),
                     Maxlines: 1,
                     p: true),


                  // child: CustomTextField(
                  //   prefix: true,
                  //   prefix_Icon: "assets/icons/mail.png",
                  //   suffix: false,
                  //   isobscure: false,
                  //   border: true,
                  //  controller: TextEditingController(),
                  //   hint: "example@mail.com"
                  // ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [SizedBox(width: 17,),
                  TextWidgetPoppins(title: AppConstant.mot,fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.black2e)
                  ],
                ),
                SizedBox(height: 4,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: CustomTextField(a: true,
                      prefix: true,
                      prefix_Icon: "assets/icons/lock.png",
                      hint: "The Gourmet Sphere",
                      border: true,
                      suffix: false,
                      isobscure: false,
                      controller: TextEditingController(),
                      Maxlines: 1,
                      p: true),


                  // child: CustomTextField(
                  //   controller: TextEditingController(),
                  //   hint: "*******",
                  //   border: true,
                  //   suffix: false,
                  //   isobscure: false,
                  //   prefix_Icon: "assets/icons/lock.png",
                  //   prefix: true,
                  //
                  // ),
                ),
                SizedBox(height: 24,),

               Container(
                   margin: EdgeInsets.symmetric(horizontal: 17),
                   child: CustomButton(title: AppConstant.connection,ontap: (){Get.to(()=> bottomNavigationbar()); }, context: context,color: AppColors.pink )),

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextWidgetInter(title: AppConstant.forgot,color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w400,),
                    SizedBox(width: 17,)
                  ],
                ),
               SizedBox(height: 25,),
                InkWell(
                  onTap: (){
                    Get.to(()=>sign_Up());
                  },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidgetInter(title: AppConstant.dont,color: AppColors.lighttextcolor,fontWeight: FontWeight.w400,fontSize: 14),
                       SizedBox(width: MySize.scaleFactorWidth*3,),
                           TextWidgetInter(title: "Signup",fontSize: 14,fontWeight: FontWeight.w400,color: Colors.blue)
                             //
                      ],
                    )),
                SizedBox(height: 50,),
              ],
            ),
        ),
      ),
    );
  }
}
