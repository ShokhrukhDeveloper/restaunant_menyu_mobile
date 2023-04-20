import 'package:flutter/material.dart';
class SubCategoryText extends StatelessWidget {
  const SubCategoryText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      width: double.infinity,
      height: 110,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 3,left: 15,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Gadget ",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: "DM Sans",
                fontWeight: FontWeight.bold
            ),
            overflow: TextOverflow.ellipsis,),
          SizedBox(height: 5,),
          // AppTextFiled(),
        ],
      ),

    );
  }
}
