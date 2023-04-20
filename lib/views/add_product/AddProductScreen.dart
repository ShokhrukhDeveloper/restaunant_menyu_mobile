import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/views/Widget/AppTextField.dart';
import 'package:untitled/views/Widget/CategoryWidget.dart';
class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  Uint8List? image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CategoryWidget(),
              const SizedBox(height: 20,),
              const AppTextFiled(
                name: "nomini yozing",
                iconData: Icons.drive_file_rename_outline,
              ),
              const SizedBox(height: 20,),
              const AppTextFiled(
                name: "narxini yozing",
                iconData: Icons.price_change_rounded,
                keyboard: TextInputType.number,
              ),
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
                    margin: EdgeInsets.all(7),
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
      ),
    );
  }
}
