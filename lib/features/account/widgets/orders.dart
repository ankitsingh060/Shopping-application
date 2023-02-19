import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_application/features/account/widgets/singleProduct.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://lh3.googleusercontent.com/spp/AHlUXW0TILvz9gD9olMUdHC1pxlGoWDRP5dkju3gCbnsytbl38siYHToVgwlkajn4MJf755K5cw0mxrG451BJ0srsqStNiQV81PRjufAKQxK7fAsmY-NGlZ3O2iJaM4vThm7eVOY_KTfs7Ttf-F57NmnYysnyzeRDcLFzKMpojTENl-9lpQwdzzDHNU7lu8fS4LgATzQbiAwwHU=s512-rw-pd-pc0x00ffffff',
    'https://lh3.googleusercontent.com/spp/AHlUXW2x8SEDcA2TWtr9mYKBL_eYpfT9mDih2EFf6WlsvVieiCRH9gUNZEjb6JXmc0KWGijuwak7mRmgvT7fyUJWZgWwwEwTLvIluvntgFN41VPM20z7aDiFbx1LVsg2LkFelxSijuI0KeyFNSTFAPDxEKy2DMD_5aUynxIYvjPxZLBhiO8yg5DCrf43MQJ8YZ_261xx2F0fTg=s512-rw-pd-pc0x00ffffff',
    'https://lh3.googleusercontent.com/spp/AHlUXW0TILvz9gD9olMUdHC1pxlGoWDRP5dkju3gCbnsytbl38siYHToVgwlkajn4MJf755K5cw0mxrG451BJ0srsqStNiQV81PRjufAKQxK7fAsmY-NGlZ3O2iJaM4vThm7eVOY_KTfs7Ttf-F57NmnYysnyzeRDcLFzKMpojTENl-9lpQwdzzDHNU7lu8fS4LgATzQbiAwwHU=s512-rw-pd-pc0x00ffffff',
    'https://lh3.googleusercontent.com/spp/AHlUXW2x8SEDcA2TWtr9mYKBL_eYpfT9mDih2EFf6WlsvVieiCRH9gUNZEjb6JXmc0KWGijuwak7mRmgvT7fyUJWZgWwwEwTLvIluvntgFN41VPM20z7aDiFbx1LVsg2LkFelxSijuI0KeyFNSTFAPDxEKy2DMD_5aUynxIYvjPxZLBhiO8yg5DCrf43MQJ8YZ_261xx2F0fTg=s512-rw-pd-pc0x00ffffff'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Text('Your Orders',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 15),
                child: const Text('See all',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue
                  ),
                ),
              )
            ],
          ),

          // display orders
          Container(
            height: 170,
            padding: const EdgeInsets.only(
              left: 10,
              top: 20,
              right: 0,
            ),
            child:
               ListView.builder(
                  scrollDirection: Axis.horizontal,
                   itemCount: list.length,
                   itemBuilder: (context,index) {
                     return SingleProduct(image: list[index]);
                   }),
          )
        ],
      ),
    );
  }
}
