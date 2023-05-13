import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/views/login_up/login_Up.dart';
import 'package:thestart/widgets/text_widget.dart';
import '../../utils/app_Colors.dart';
import '../../utils/app_constant.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../../widgets/button.dart';
import '../../widgets/textfield.dart';
import '../bottom_navigation_bar/bottom_NavigationBar.dart';
import '../bottom_navigation_bar/home.dart';
import '../bottom_navigation_bar/research_Screen.dart';

class sign_Up extends StatefulWidget {
  const sign_Up({Key? key}) : super(key: key);

  @override
  State<sign_Up> createState() => _sign_UpState();
}

class _sign_UpState extends State<sign_Up> {
  bool isChecked = false;

  @override
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.black;
    }
    return Colors.black;
  }

  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child:
                    Column(
                      children: [
                        Appbar(),
                        SizedBox(height: 40,),

                      TextWidgetPoppins(title: AppConstant.ins,fontSize: 24,fontWeight: FontWeight.w700,color: AppColors.black2e) ,
                        SizedBox(height: 47,),
                        InkWell(
                            onTap: (){
                              Get.to(()=>sign_Up());
                            },
                            child:
                         TextWidgetInter(title: AppConstant.sins,fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.black93),),
                        SizedBox(height: 16,),

                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 17),
                            child: CustomButton(title: AppConstant.facebook, ontap:(){}, context:context,image:"assets/icons/facebook.png" ,color: AppColors.facebook)),

                        SizedBox(height: 15,),

                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 17),
                            child: CustomButton(title: AppConstant.facebook, ontap:(){}, context:context,image:"assets/icons/facebook.png" ,color: AppColors.Google)),

                        SizedBox(height: 56,),

                        TextWidgetInter(title: AppConstant.seeconector,fontWeight: FontWeight.w600,color: AppColors.lighttextcolor),

                        SizedBox(height: 24,),

                        Row(
                          children: [SizedBox(width: 17,),

                           TextWidgetPoppins(title: AppConstant.penom,fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.black2e)
                          ],
                        ),
                        SizedBox(height: 4,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: CustomTextField(
                              prefix: true,
                              prefix_Icon: "assets/icons/person.png",
                              suffix: false,
                              isobscure: false,
                              border: true,
                              controller: TextEditingController(),
                              hint: "Samuel",
                              p: true,
                          ),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [SizedBox(width: 17,),

                           TextWidgetPoppins(title: AppConstant.nom,fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e)

                          ],
                        ),SizedBox(height: 4,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: CustomTextField(
                              prefix: true,
                              prefix_Icon: "assets/icons/person.png",
                              suffix: false,
                              isobscure: false,
                              border: true,
                              controller: TextEditingController(),
                              hint: "Kitou",
                            p: true,
                          ),
                        ),


                        SizedBox(height: 16,),
                        Row(
                          children: [SizedBox(width: 17,),
                            TextWidgetPoppins(title: AppConstant.societe,fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e)
                          ],
                        ),SizedBox(height: 4,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: CustomTextField(
                            a: true,
                              prefix: true,
                              prefix_Icon: "assets/icons/person.png",
                              suffix: false,
                              isobscure: false,
                              border: true,
                              controller: TextEditingController(),
                              hint: "Kitou",
                            p: true,
                          ),
                        ),


                        SizedBox(height: 16,),
                        Row(
                          children: [SizedBox(width: 17,),
                            TextWidgetPoppins(title: AppConstant.mail,fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e)
                          ],
                        ),
                        SizedBox(height: 4,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: CustomTextField(
                              prefix: true,
                              prefix_Icon: "assets/icons/mail.png",
                              suffix: false,
                              isobscure: false,
                              border: true,
                              controller: TextEditingController(),
                              hint: "example@mail.com",
                            p: true,
                          ),
                        ),

                        SizedBox(height: 16,),
                        Row(
                          children: [SizedBox(width: 17,),

                            TextWidgetPoppins(title: AppConstant.mot,fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e)

                          ],
                        ),
                        SizedBox(height: 4,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: CustomTextField(
                            prefix: true,
                            prefix_Icon: "assets/icons/lock.png",
                            suffix: false,
                            isobscure: false,
                            border: true,
                            controller: TextEditingController(),
                            hint: "*******",
                            p: true,
                          ),
                        ),

                        SizedBox(height: 16,),
                        Row(
                          children: [
                            SizedBox(width: 17,),
                            TextWidgetPoppins(title: AppConstant.confermer,fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e)

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
                              p: true,
                           fill: true),

                        ),

                        SizedBox(height: 20,),
                        Row(
                          children: [
                          Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),

                            TextWidgetPoppins(title: AppConstant.jai,fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.lighttextcolor),


                            SizedBox(width: MySize.scaleFactorWidth * 5,),
                            TextWidgetInter(title: AppConstant.cgu,fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.pink),

                            SizedBox(width: 5,),

                            TextWidgetInter(title: AppConstant.et,fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.lighttextcolor),

                            SizedBox(width: 5,),

                            TextWidgetInter(title: AppConstant.cgv,fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.pink),

                             ],
                        ),
                        SizedBox(height: 25,),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 17),
                            child: CustomButton(title: AppConstant.connection, ontap:(){Get.to(()=>bottomNavigationbar());}, context:context,color: AppColors.pink )),
                        SizedBox(height: 40,),
                            Center(child: InkWell(
                                onTap: (){
                                  Get.to(()=>login());
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextWidgetInter(title: AppConstant.Ihave,fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.lighttextcolor),

                                    TextWidgetInter(title: " Log In",fontWeight: FontWeight.w400,fontSize: 14,color: Colors.blue),

                                  ],
                                ))),
                        SizedBox(height: 32,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
    );
  }
}
