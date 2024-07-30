import 'package:flutter/material.dart';
class myChip extends  StatelessWidget {
  final Function (bool newState)onPressed;
  final bool checked;
  final String flagLocation;
  final String country;
  const myChip({required this.onPressed, required this.checked, required this.flagLocation, required this.country});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(label:  Text(country,style: TextStyle(fontWeight:FontWeight.w400,fontSize: 16,color: Color(0xff111827))), selected: checked,
      onSelected: onPressed,
      avatar: Image.asset(flagLocation),
      selectedColor: Color(0xffD6E4FF),
      showCheckmark: false,
      backgroundColor: Color(0xffE5E7EB),
      side: BorderSide(
          color:checked? Color(0xff3366FF):Color(0xffE5E7EB)
      ),
      shape:StadiumBorder(side: BorderSide()) ,

    );
  }
}

class myTab extends StatelessWidget {
  final Function() onPressed;
  final bool checked;
  final String workLocation;

  const myTab({super.key, required this.onPressed, required this.checked, required this.workLocation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed ,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: checked?const Color(0xff091A7A):const Color(0xffF4F4F5)
          ),
          child: Center(child: Text(workLocation,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: checked?const Color(0xffffffff):const Color(0xff6B7280)),))
      ),
    );
  }
}
