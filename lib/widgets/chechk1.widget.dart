import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/models/models.dart';
import '../utils/app_Colors.dart';
import '../views/checkout_screen1/checkout_Screen.dart';

// class chechkoutt extends StatefulWidget {
//    chechkoutt({Key? key}) : super(key: key);
//
//   @override
//   State<chechkoutt> createState() => _chechkouttState();
// }
//
// class _chechkouttState extends State<chechkoutt> {
//
//   List <cocunot> Cocunot = [
//     cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
//     cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
//     cocunot('Coconut sphere', 'TOTAL', '56.00 €'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//       height: 230,
//       child: ListView.builder(
//         padding: EdgeInsets.symmetric(vertical: 0),
//         shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: Cocunot.length,
//           itemBuilder: (ctx,i)
//       {
//        return plusminus(c: Cocunot[i],onDelete: (){
//          Cocunot.removeAt(i);
//          setState(() {
//
//          });
//        },);
//
//       }
//    ),
//     );
// }
// }

class plusminus extends StatefulWidget {
  ///
    plusminus({Key? key,required this.c,required this.onDelete}) : super(key: key);

 final cocunot c;
 final Function onDelete;

 ///
  @override
  State<plusminus> createState() => _plusminusState();
}

class _plusminusState extends State<plusminus> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      color: Colors.white,
      height: 80,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          Container(
            child: Row(

              children: [
                InkWell(
                    onTap: () {
                      if (count > 1) {
                        setState(() {
                          count--;
                        });
                      }
                    },
                    child: Image.asset(
                      "assets/icons/minus.png", height: 36, width: 36,)),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  height: 36,
                  width: 25,

                  child: Text("$count", style: GoogleFonts.getFont('Inter',
                      textStyle: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.07,
                          color: AppColors.black2e)),),
                ),


                InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Image.asset(
                      "assets/icons/plus.png", height: 36, width: 36,)),
              ],
            ),
          ),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 14,),

                Text(widget.c.title, style: GoogleFonts.getFont('Poppins',
                    ///
                    textStyle: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.07,
                        color: AppColors.black2e)),),
                Row(
                  children: [
                    Text(widget.c.subtitle, style: GoogleFonts.getFont('Poppins',
                        textStyle: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.07,
                            color: AppColors.black2e.withOpacity(0.40))),),
                    SizedBox(width: 8,),

                    Text(widget.c.price, style: GoogleFonts.getFont('Poppins',

                        textStyle: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.07,
                            color: AppColors.black2e.withOpacity(0.40))),),


                  ],
                ),
              ],
            ),
          ),
          Container(
            child: InkWell(
              onTap: (){
                widget.onDelete();
              },

              child: Image.asset(
                "assets/icons/trash.png", height: 24, width: 24,),
            ),
          ),

        ],
      ),
    );

  }

}

