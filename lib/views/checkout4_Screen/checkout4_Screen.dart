import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/widgets/textfield.dart';
import '../../utils/app_Colors.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../congratulation_Screen/congratulation_Screen.dart';

class checkout4 extends StatelessWidget {
  const checkout4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body:SingleChildScrollView(
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
                          Text("Step 4/4",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),
                          SizedBox(height: 11,),
                          ]

                      ),
                      Text(""),

                    ]
                  )
                ),
                            SizedBox(height: 11,),
                            Row(
                              children: [
                                SizedBox(width: 16,),
                                Text("Payment",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.spheretextc)),),
                              ],
                            ),  SizedBox(height: 11,),
                           // SizedBox(width: 5,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
              height: MySize.scaleFactorHeight*97,
              width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                    boxShadow: [
                BoxShadow(
                color: AppColors.black2e.withOpacity(0.10),
              blurRadius:2 ,
              spreadRadius: 2,
              offset: Offset(0,2),
            ),],),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 3,),
                  Text("Card number",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                  CustomTextField(
                      b: true,
                      p: false,
                      Maxlines: 1,
                      controller: TextEditingController(),
                      isobscure: false,suffix: false,
                      border: false,hint: "1 2 3 4   1 2 3 4  1 2 3  ",
                      prefix: true,a: true,k: true,
                      formatter:
                      [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                        CardNumberInputFormatter()]
                  )



                  // TextField(
                  //   keyboardType: TextInputType.number,
                  //   inputFormatters :[
                  //     FilteringTextInputFormatter.digitsOnly,
                  //     LengthLimitingTextInputFormatter(15),
                  //     CardNumberInputFormatter()
                  //   ],
                  //   decoration: InputDecoration(
                  //     hintText: "1 2 3 4   1 2 3 4  1 2 3  ",
                  //     filled: true,
                  //     fillColor: AppColors.white.withOpacity(0.37),
                  //     disabledBorder: InputBorder.none,
                  //     hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 5.7),fontWeight:FontWeight.w500,fontSize: 16),
                  //     border: InputBorder.none,
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                  height: MySize.scaleFactorHeight*105,
                  width: MySize.scaleFactorWidth*140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black2e.withOpacity(0.10),
                        blurRadius:2 ,
                        spreadRadius: 2,
                        offset: Offset(0,2),
                      ),],),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(height: MySize.scaleFactorHeight*6,),

                      Text("CVC",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                      CustomTextField(
                          p: false,Maxlines: 1,controller: TextEditingController(),isobscure: false,suffix: false,border: false,hint: "1 2 3 4   1 2 3 4  1 2 3  ",prefix: false,a: true,k: true,formatter: [
                        LengthLimitingTextInputFormatter(3)])

                      // TextField(
                      //   keyboardType: TextInputType.number,
                      //   inputFormatters: [
                      //     LengthLimitingTextInputFormatter(3)
                      //   ],
                      //   decoration: InputDecoration(
                      //     hintText: "1 2 3 4 ",
                      //     filled: true,
                      //     fillColor: AppColors.white.withOpacity(0.37),
                      //     disabledBorder: InputBorder.none,
                      //     hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 4.7),fontWeight:FontWeight.w500,fontSize: MySize.scaleFactorHeight*16),
                      //     border: InputBorder.none,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(width: MySize.scaleFactorWidth*20,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                      height: MySize.scaleFactorHeight*105,
                      width: MySize.scaleFactorWidth*140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black2e.withOpacity(0.10),
                            blurRadius:2 ,
                            spreadRadius: 2,
                            offset: Offset(0,2),
                          ),],),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(height: 6,),
                          Text("Expiration date",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                          CustomTextField(
                              p: false,Maxlines: 1,controller: TextEditingController(),isobscure: false,suffix: false,border: false,k: true,
                              hint: "1 2 3 4   1 2 3 4  1 2 3  ",prefix: false,a: true,
                              formatter: [
                            FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(4),
                                CardNumberInputFormatterdate()
                              ]
                          )

                          // TextField(
                          //   keyboardType: TextInputType.datetime,
                          //   inputFormatters :[
                          //     FilteringTextInputFormatter.digitsOnly,
                          //     LengthLimitingTextInputFormatter(4),
                          //     CardNumberInputFormatterdate()
                          //   ],
                          //   decoration: InputDecoration(
                          //     hintText: "01/10  ",
                          //     filled: true,
                          //     fillColor: AppColors.white.withOpacity(0.37),
                          //     disabledBorder: InputBorder.none,
                          //     hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 5.7),fontWeight:FontWeight.w500,fontSize: MySize.scaleFactorHeight*16),
                          //     border: InputBorder.none,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],

            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
              height: MySize.scaleFactorHeight*97,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black2e.withOpacity(0.10),
                    blurRadius:2 ,
                    spreadRadius: 2,
                    offset: Offset(0,2),
                  ),],),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 6,),
                  Text("Card holder",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),

                  CustomTextField(
                    prefix: true,
                    prefix_Icon: "assets/icons/lock.png",
                    suffix: false,
                    isobscure: false,
                    border: false,
                    controller: TextEditingController(),
                    hint: "MR Mouhamadou DER",
                  ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "MR Mouhamadou DER",
                  //     filled: true,
                  //     fillColor: AppColors.white.withOpacity(0.37),
                  //     disabledBorder: InputBorder.none,
                  //     hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 5.7),fontWeight:FontWeight.w500,fontSize: MySize.scaleFactorHeight*16),
                  //     border: InputBorder.none,
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 104,),
            Container(
              height: 82,
              width: Get.width,

              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff2C2C2C),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order 0821S",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.white)),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text("Total:",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.white.withOpacity(0.53))),),
                     SizedBox(width: 5,),
                      Text("56.00€",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.white.withOpacity(0.53))),),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 66,),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/safe.png",height: 20,width: 19,),
              SizedBox(width: 5,),
                Text("100% secure payment",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*16,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e)),),

              ],
            ),
            SizedBox(height: 39,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SizedBox(width: MySize.scaleFactorWidth*15,),

                    Text("Pay",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*16,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.white)),),
                    SizedBox(width: MySize.scaleFactorWidth*40,),
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
                  Get.to(()=>congratulationScreen());
                },
              ),

            ),
            SizedBox(height: 23,),
                            ]
                          ),
      ),

    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue){
    if (newValue.selection.baseOffset == 0){
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for ( var i = 0; i < inputData.length; i++){
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length!=index ){
        buffer.write("  ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length,)
    );
  }

}

class CardNumberInputFormatterdate extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue){
    if (newValue.selection.baseOffset == 0){
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for ( var i = 0; i < inputData.length; i++){
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 2 == 0 && inputData.length!=index ){
        buffer.write("/");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length,)
    );
  }

}

