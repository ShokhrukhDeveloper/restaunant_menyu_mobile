import 'package:flutter/material.dart';
import 'package:untitled/views/Widget/CategoryWidget.dart';
import 'package:untitled/views/add_product/AddProductScreen.dart';

import '../Widget/SubCategory.dart';
class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant Name"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const AddProductScreen())),
              icon: const Icon(Icons.add_photo_alternate_sharp))
        ],
      ),
      body: Column(
        children:  [
          const CategoryWidget(),
          const SizedBox(height: 10,),
          Expanded(
              child:
              GridView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: 9,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (MediaQuery.of(context).size.width) ~/156,
                    childAspectRatio: 15/24,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 13,

                  ),
                  itemBuilder: (c,i)=>InkWell(
                      // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const ProductDetailPage())),
                      child: item()))
          )
        ],
      ),
    );
  }
  Widget item(){
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      width: 150,
      height: 250,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(height: 5,),
          Expanded(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image:NetworkImage("https://picsum.photos/200"),fit: BoxFit.cover,) )
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            "TMA-2 HD Wireless rtertawrtawetat sdasdsdfds asdasdf",
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
          const Text(
            "Rp. 1.500.000 ",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12, color: Color(0xffFE3A30), fontWeight: FontWeight.w700),
          ),

          Row(
            children: [
              Icon(Icons.star,color: Colors.amberAccent,),
              const SizedBox(width: 2,),
              const Text(
                "4.6 ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 5,),
              const Text(
                "86 Reviews",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ],
          )


        ],
      ),
    );
  }
}