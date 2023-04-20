import 'package:flutter/material.dart';

// import 'package:shoxshop_mobile/Presentation/Pages/SubCategoryPage/ProductsPage.dart';
class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return InkWell(
      // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const SubCategoryPage())),
      child: Container(

        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)

        ),
        width: 100,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: NetworkImage("https://picsum.photos/200"),
                      fit: BoxFit.cover)),
            ),
            const Flexible(
              child: Text(
                "Foods",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}