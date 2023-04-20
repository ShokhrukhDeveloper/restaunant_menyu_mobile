import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/views/Widget/AppTextField.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  Uint8List? image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Add category"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0,left: 20,right: 20),
        child: Column(
          children:  [
            const AppTextFiled(),
            const SizedBox(height: 20,),
            if(image!=null)InkWell(
              onTap: ()async{
                var res= await  _picker.pickImage(source: ImageSource.gallery);
                if(res!=null)
                {
                  image=await res.readAsBytes();
                  setState(() {
                  });
                }
              },
              child: Container(
                margin: const EdgeInsets.all(3),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                    image: DecorationImage(
                        image: MemoryImage(image!),fit: BoxFit.cover
                    )
                ),
              ),
            ),
            if(image==null)InkWell(
          onTap: ()async{
            var res= await  _picker.pickImage(source: ImageSource.gallery);
            if(res!=null)
            {
              image=await res.readAsBytes();
              setState(() {
              });
            }
          },  child: Container(
          margin: const EdgeInsets.all(3),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black)
          ),
          child: const Center(
            child: Icon(Icons.add_a_photo),
          ),
        ),
        ),
            const SizedBox(height: 20,),
            InkWell(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(7),
                  height: 35,width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),color: Colors.green

                  ),
                  child: const Center(
                    child: Text("Qo'shish",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,color: Colors.white
                      ),
                     ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
