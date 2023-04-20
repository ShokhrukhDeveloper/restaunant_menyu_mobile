import 'package:flutter/material.dart';

import '../add_category/AddCategoryScreen.dart';
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:   [
            Text(
              "Categories",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "DM Sans"),
            ),
            InkWell(
               onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const AddCategory())),
              //onTap:(){} ,
              child: Text(
                "AddCategory",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff3669C9),
                    fontFamily: "DM Sans"),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 12 ,
              itemBuilder: (c,index){
            return  InkWell(
                onTap: (){
                  i=index;
                  setState(() {

                  });
                },
                child: item(index));
          }),
        )
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //
        //       item(),
        //       item(),
        //       item(),
        //       item(),
        //       item(),
        //     ],
        //   ),
        // ),
      ],
    );
  }

  Widget item(int index) {
    return Container(
      width: 80,
      height: 80,
      color: index ==i?Colors.black26:Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage("https://picsum.photos/200"),
                    fit: BoxFit.cover)),
          ),
          const Text(
            "Food",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}