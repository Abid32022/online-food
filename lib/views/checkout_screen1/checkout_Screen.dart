import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/_http/_io/_file_decoder_io.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/models/models.dart';
import 'package:thestart/utils/app_constant.dart';
import '../../utils/app_Colors.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../../widgets/button.dart';
import '../../widgets/chechk1.widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/textfield.dart';
import '../checkout_2/checkout2_screen.dart';

class chechkout extends StatefulWidget {
   chechkout({Key? key,}) : super(key: key);

  @override
  State<chechkout> createState() => _chechkoutState();
}

class _chechkoutState extends State<chechkout> {

  int count = 1;

  List <cocunot> Cocunot = [
    cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
    cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
    cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
    cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
  ];


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
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.sphercolor,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,),
                      Column(
                        children: [
                          TextWidgetPoppins(title: "Checkout basket",fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.spheretextc),

                          TextWidgetPoppins(title: "Step 1/4",fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.black2e),


                        ],
                      ),
                      Text("",),

                    ],
                  ),
                ),
                Container(
                  color: Color(0xffF1EEE7),
                  height: 78,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidgetPoppins(title: "The Gourmet Sphere",fontWeight: FontWeight.w700,fontSize: 18,color: AppColors.black2e),


                         SizedBox(width: 8,),
                          TextWidgetPoppins(title: "5",fontWeight: FontWeight.w500,fontSize: 12,color: AppColors.black2e),


                          SizedBox(width: 4,),
                          Image.asset("assets/icons/star.png",height: 10,width: 10,)
                        ],
                      ),
                      TextWidgetPoppins(title: AppConstant.avanue2,fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.black2e),

                    ],
                  ),
                ),
                ///check Out Widget

            Container(
              height: 230,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Cocunot.length,
                  itemBuilder: (ctx,i)
                  {
                    return plusminus(c: Cocunot[i],onDelete: (){
                      Cocunot.removeAt(i);
                      setState(() {

                      });
                    },);

                  }
              ),
            ),

                ///check Out Widget
              SizedBox(height: 43,),
                Row(
                  children: [
                    SizedBox(width: 19,),
                    TextWidgetPoppins(title: "Your comment",fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e),

                  ],
                ),
                SizedBox(height: 4,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: CustomTextField(Maxlines: 5,controller: TextEditingController(),isobscure: false,suffix: false,border: true,hint: "lorem ipsim",a: false,prefix: false)),

                // Container(
                //     height: 120,
                //     child: CustomTextField(Maxlines: 5,controller: TextEditingController(),isobscure: false,suffix: false,border: true,hint:'lorem ipsim',a: true,prefix: null )),                // Container(
                // Container(
                //     height: 120,
                //     child: CustomTextField(Maxlines: 5,controller: TextEditingController(),isobscure: false,suffix: false,border: true,hint:'lorem ipsim',a: true,prefix: null )),                // Container(
                // //   margin: EdgeInsets.symmetric(horizontal: 17),
                //   height: 120,
                //   color: Colors.white,
                //   // color: Colors.black12,
                //   child: TextField(
                //     keyboardType: TextInputType.multiline,
                //     maxLines: 5,
                //     decoration: InputDecoration(
                //       filled: true,
                //       fillColor: AppColors.white.withOpacity(0.37),
                //       disabledBorder: InputBorder.none,
                //       hintText: 'lorem ipsim',
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

                SizedBox(height: 74,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 60,
                  width:MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.05),
                        blurRadius: 8,
                        spreadRadius: 8,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidgetPoppins(title: "3 produits",fontWeight: FontWeight.w600,fontSize: 16,color: AppColors.black2e),

                      Container(
                          child: Row(
                            children: [
                              TextWidgetPoppins(title: "TOTAL",fontWeight: FontWeight.w600,fontSize: 18,color: AppColors.black2e.withOpacity(0.40)),

                              SizedBox(width: 8,),
                              TextWidgetPoppins(title: "178.00 €",fontWeight: FontWeight.w400,fontSize: 18,color: AppColors.black2e.withOpacity(0.40)),
                              SizedBox(width: 2,)
                            ],
                          )),
                     ],
                  ),
                  ),
                SizedBox(height: 16,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                    child: CustomButton2(title: "validate my cart",a: true,color: AppColors.pink,ontap: (){Get.to(()=>checkOut2());},context: context,widget: Text("${Cocunot.length}",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),)),
                SizedBox(height: 23,),
              ],
            ),
          ),
    );
  }
}

class cocunot {
  String title;
  String subtitle;
  String price;

  cocunot(this.title,this.subtitle,this.price);
}