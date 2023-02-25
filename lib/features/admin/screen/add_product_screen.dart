import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shopping_application/common/widgets/custom_bottom.dart';
import 'package:shopping_application/common/widgets/custom_textfield.dart';
import 'package:shopping_application/constants/global_variable.dart';
import 'package:shopping_application/constants/utils.dart';

class AddProductScreen extends StatefulWidget {
  static const String routeName = '/add-product';
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();



  String category = 'Mobiles';
  List<File> images = [];
  @override
  void dispose() {
    super.dispose();
    productNameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    productNameController.dispose();
  }

  void selectImages() async{
    var res = await pickImages();
    setState(() {
      images = res;
    });
  }

  List<String> productCategories = [
    'Mobiles',
    'Essentials',
    'Appliances',
    'Books',
    'Fashion',
    'Grocery'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: const Text(
            'Add Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: selectImages,
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                      radius: const Radius.circular(10),
                      dashPattern: const [10,4],
                      strokeCap: StrokeCap.round,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.folder_open,
                              size: 40,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              'Select Product Image',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade400,
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),

                const SizedBox(height: 30,),
                CustomTextField(Controller: productNameController, hint: "Product Name"),
                const SizedBox(height: 10,),

                CustomTextField(
                  Controller: descriptionController,
                  hint: "Description Name",
                  maxLines: 7,
                ),
                const SizedBox(height: 10,),
                CustomTextField(Controller: priceController, hint: "Price"),
                const SizedBox(height: 10,),
                CustomTextField(Controller: qualityController, hint: "Quality"),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton(
                    value: category,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: productCategories.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newVal){
                      setState(() {
                        category = newVal!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10,),
                CustomBottom(
                    text: 'Sell',
                    onTap: (){}
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
