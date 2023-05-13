import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/utils/app_constant.dart';
import 'package:thestart/widgets/textfield.dart';
import '../../utils/app_Colors.dart';
import '../../utils/size_config.dart';
import '../../widgets/DropdownWidget.dart';
import '../../widgets/app_bars.dart';
import '../chechkout3.Screen/chechkout3_Screen.dart';

class checkOut2 extends StatefulWidget {
  const checkOut2({Key? key}) : super(key: key);

  @override
  State<checkOut2> createState() => _checkOut2State();
}

class _checkOut2State extends State<checkOut2> {
  int selectedRadio = 0;

  @override
  void initState(){
    super.initState();
    selectedRadio;

  }
  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }
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
              padding: EdgeInsets.symmetric(horizontal: 14),
              height: 56,
              width: Get.width,
              color: AppColors.sphercolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,),

                  Column(
                    children: [
                      Text("Checkout basket",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.spheretextc)),),
                      Text("Step 2/4",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),


                    ],
                  ),
                  Text("",),
                ],
              ),
            ),

            SizedBox(height: 16,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              height:82,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow.withOpacity(0.1),
                    spreadRadius: 8,
                    blurRadius: 8,
                    offset: Offset(0,4)
                  ),
                ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [SizedBox(height: 18,),
                          Text("Withdrawal in store",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              SizedBox(width: 16,),
                              Text("Opening time:",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.53))),),
                              SizedBox(width: 3,),
                              Text("9 a.m. - 6 p.m",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.53))),),
                            ],
                          ),
                        ],
                      ),
                      Radio(
                          activeColor: Colors.black,
                          value: 1, groupValue: selectedRadio, onChanged: (val){
                        print("Radio $val");
                        setSelectedRadio(val!);
                      }
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              height:256,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.shadow.withOpacity(0.1),
                        spreadRadius: 8,
                        blurRadius: 8,
                        offset: Offset(0,4)
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      SizedBox(width: 16,),
                        Text("Home delivery",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                   Spacer(),
                      Radio(
                          activeColor: Colors.black,
                          value: 2, groupValue: selectedRadio, onChanged: (val){
                        print("Radio $val");
                        setSelectedRadio(val!);
                      }
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 16,),
                      Text("Personal address",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.53))),),
                      SizedBox(width: 3,),
                       ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(AppConstant.avanue2,style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.53))),),
                  ),
                    SizedBox(height: 11,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      height: 48,
                      minWidth: Get.width,
                      color: Color(0xffE5E5E5),
                      child: Text("Edit address",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e)),),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 11,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      height: 48,
                      minWidth: Get.width,
                      color: AppColors.black2e,
                      child: Text("Add another delivery address",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.white)),),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 18,)
                ],
              ),
            ),
            SizedBox(height: 16,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 286,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow.withOpacity(0.1),
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0,4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18,),
              Text("Delivery time and days",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                SizedBox(height: 14,),
                Text("Delivery day",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),
               SizedBox(height: 3,),
                Container(
                    height: 48,
                    child: Dropdown()),
                SizedBox(height: 16,),
                Text("Delivery schedule",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(

                        width: MySize.scaleFactorWidth*125,
                        height: MySize.scaleFactorHeight*54,
                        child: CustomTextField(prefix: false,a: true,hint: "40m",border: true,suffix: false,isobscure: false,controller: TextEditingController(),)),

                    SizedBox(width: MySize.scaleFactorWidth*9,),
                    Text("-",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorWidth*14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e)),),
                    SizedBox(width:  MySize.scaleFactorWidth*10,),
                    SizedBox(
                      width: MySize.scaleFactorWidth*125,
                      height: MySize.scaleFactorHeight*54,
                        child: CustomTextField(prefix: false,hint: "40m",border: true,suffix: false,isobscure: false,controller: TextEditingController(),Maxlines: 1,a: true,)),

                    // Container(
                    //   height: MySize.scaleFactorHeight*48,
                    //   width:  MySize.scaleFactorWidth*130,
                    //   color: Colors.white,
                    //   // color: Colors.black12,
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       filled: true,
                    //       fillColor: AppColors.white.withOpacity(0.37),
                    //       disabledBorder: InputBorder.none,
                    //       hintText: '40h',
                    //       hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),fontSize: MySize.scaleFactorWidth*14,letterSpacing: 0.7)),
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
                SizedBox(height: 26,),
                Row(
                  children: [
                    Text("Shipping cost",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.black2e)),),
                    SizedBox(width: 18,),
                    Text("4.00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.53))),),

                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
          SizedBox(height: 44,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),

                    Text("Validate my cart",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.white)),),

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
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text("1",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                      ),
                    )
                  ],
                ),

                height: 64,
                minWidth: MediaQuery.of(context).size.width,
                color: AppColors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                onPressed: (){
                  Get.to(()=>checkout3());
                },
              ),

            ),
            SizedBox(height: 54,)

          ],
        ),
      ),
    );
  }
}
