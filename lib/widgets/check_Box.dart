import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/models.dart';
import '../utils/app_Colors.dart';
import '../utils/size_config.dart';

class checkbox extends StatefulWidget {
  checkkbox? select;
  checkbox({this.select});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {

  List<checkkbox> chek = [
    checkkbox('Coco'),
    checkkbox('Pineapple'),
    checkkbox('Lime'),
    checkkbox('Rum'),
    checkkbox('Coffee'),
    checkkbox('Chocolate'),
    checkkbox('Passion fruit'),
    checkkbox('Mango'),
    checkkbox('Pecan nuts'),
    checkkbox('Vanilla'),
    checkkbox('Honey'),
    checkkbox('Thyme'),
  ];

  bool isChecked1 = false;

  Widget build(BuildContext context) {

    return  Container(
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: chek.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0.5,
            crossAxisCount: 3,
          childAspectRatio: 3,
          ),
          itemBuilder: (context,i){
        return RadioWidget(chek[i].title);
      })
    );
  }
}

class RadioWidget extends StatefulWidget {

  String title;
  RadioWidget(this.title);

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {

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
    return Colors.pink;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
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
        Expanded(child: Text(widget.title,style: GoogleFonts.getFont('Inter',textStyle: TextStyle(fontSize: MySize.scaleFactorHeight*12,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e,),),overflow: TextOverflow.ellipsis,)),
      ],
    );
  }
}
