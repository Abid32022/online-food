import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/_http/_io/_file_decoder_io.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/models/models.dart';
import 'package:thestart/utils/size_config.dart';
import '../utils/app_Colors.dart';
import 'check_Box.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({Key? key}) : super(key: key);

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

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
    return Colors.pink;
  }

  List<checkkbox> chek = [

    checkkbox('Coco'),
    checkkbox('Pineapple'),
    checkkbox('Lime'),
    checkkbox('Rum'),
    checkkbox('Coffee'),
    checkkbox('Chocolate'),
    checkkbox('Passion fruit'),
    checkkbox('Mango'),
    checkkbox('Noix de Pécan'),
    checkkbox('Vanilla'),
    checkkbox('Honey'),
    checkkbox('Thyme'),

  ];
  @override

  Widget build(BuildContext context) {
    MySize().init(context);
    return  Container(
      // height: MediaQuery.of(context).size.height * 3,
        width: 414,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.05),
              blurRadius: 14,
              spreadRadius: 8,
              offset: Offset(0, -4), // changes position of shadow
            ),
          ],
            color: Colors.white,
            borderRadius:BorderRadius.vertical(top: Radius.circular(38))
        ),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              SizedBox(height: 34,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e,),),),

                    Text("Filter",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e,),),),

                    InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Image.asset("assets/icons/cross.png",height: 24,width: 24,)),

                  ],
                ),
              ),
              SizedBox(height: 34,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text("AVAILABILITY TIMES",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40),),),),
              ),

              SizedBox(height: 36,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text("FLAVOR",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40),),),),
               ),SizedBox(height: 4,),

              /// checkBox Widget ///
              Container(
                  child: checkbox()),
              /// checkBox Widget ///
              ///
              SizedBox(height: 36,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 18),
               child: Text("Food preferences",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.40),),),),
             ),
              SizedBox(height: 8,),
              Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                ),
               Text("Fish gelatinImmedia",style: GoogleFonts.getFont('Inter',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e,),),),

                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked3,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked3 = value!;
                    });
                  },
                ),
                Expanded(child: Text("Presence of alcohol",style: GoogleFonts.getFont('Inter',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e,),),maxLines: 2,overflow: TextOverflow.ellipsis,)),

              ],
              ),

              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                  Text("Presence of alcohol",style: GoogleFonts.getFont('Inter',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e,),),),
                ],
              ),
              SizedBox(height: 43,),
              MaterialButton(
                height: 83,
                minWidth: Get.width,
                color: Colors.pink,
                onPressed: (){
                  Get.back();
                },
              child: Text("Apply",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*18,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.white,),),),

              ),

            ],
          ),
        ),
      );

  }
}

