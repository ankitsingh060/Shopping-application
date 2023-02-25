import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/macbook-air-space-gray-select-201810?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1664472289661',
          height: 235,
          fit: BoxFit.fitHeight ,
        ),
        Container(
          padding: const EdgeInsets.only(left:15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15,top: 5,right: 40),
          child: const Text(
            'Mac-Book',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
           children: [
             Image.network(
               'https://lh3.googleusercontent.com/spp/AHlUXW0w3uy_xPHy3ZevOpq_-2Ik2aoL66Ixk52DHsJLdabTmBvhYGEFwxnN0qvQ43lJWMTK8T9g9a6CrkDVVvn3diJKBGISwMkX1SC2VT9Lg6NN40kwkLusOrB06pTOaxi7EbCWWG7VhvCn2CCyk8Do1zmqMgda0yka1fuWRixiqTE5GajnQLtun6MuQoUQMQOMt24QcNPHviA=s512-rw-pd-pc0x00ffffff',
               fit: BoxFit.fitWidth,
               width: 100,
               height: 100,
             ),
             Image.network(
               'https://lh3.googleusercontent.com/spp/AHlUXW0w3uy_xPHy3ZevOpq_-2Ik2aoL66Ixk52DHsJLdabTmBvhYGEFwxnN0qvQ43lJWMTK8T9g9a6CrkDVVvn3diJKBGISwMkX1SC2VT9Lg6NN40kwkLusOrB06pTOaxi7EbCWWG7VhvCn2CCyk8Do1zmqMgda0yka1fuWRixiqTE5GajnQLtun6MuQoUQMQOMt24QcNPHviA=s512-rw-pd-pc0x00ffffff',
               fit: BoxFit.fitWidth,
               width: 100,
               height: 100,
             ),
             Image.network(
               'https://lh3.googleusercontent.com/spp/AHlUXW0w3uy_xPHy3ZevOpq_-2Ik2aoL66Ixk52DHsJLdabTmBvhYGEFwxnN0qvQ43lJWMTK8T9g9a6CrkDVVvn3diJKBGISwMkX1SC2VT9Lg6NN40kwkLusOrB06pTOaxi7EbCWWG7VhvCn2CCyk8Do1zmqMgda0yka1fuWRixiqTE5GajnQLtun6MuQoUQMQOMt24QcNPHviA=s512-rw-pd-pc0x00ffffff',
               fit: BoxFit.fitWidth,
               width: 100,
               height: 100,
             ),
             Image.network(
               'https://lh3.googleusercontent.com/spp/AHlUXW0w3uy_xPHy3ZevOpq_-2Ik2aoL66Ixk52DHsJLdabTmBvhYGEFwxnN0qvQ43lJWMTK8T9g9a6CrkDVVvn3diJKBGISwMkX1SC2VT9Lg6NN40kwkLusOrB06pTOaxi7EbCWWG7VhvCn2CCyk8Do1zmqMgda0yka1fuWRixiqTE5GajnQLtun6MuQoUQMQOMt24QcNPHviA=s512-rw-pd-pc0x00ffffff',
               fit: BoxFit.fitWidth,
               width: 100,
               height: 100,
             ),
             Image.network(
               'https://lh3.googleusercontent.com/spp/AHlUXW0w3uy_xPHy3ZevOpq_-2Ik2aoL66Ixk52DHsJLdabTmBvhYGEFwxnN0qvQ43lJWMTK8T9g9a6CrkDVVvn3diJKBGISwMkX1SC2VT9Lg6NN40kwkLusOrB06pTOaxi7EbCWWG7VhvCn2CCyk8Do1zmqMgda0yka1fuWRixiqTE5GajnQLtun6MuQoUQMQOMt24QcNPHviA=s512-rw-pd-pc0x00ffffff',
               fit: BoxFit.fitWidth,
               width: 100,
               height: 100,
             ),
             Image.network(
               'https://lh3.googleusercontent.com/spp/AHlUXW0w3uy_xPHy3ZevOpq_-2Ik2aoL66Ixk52DHsJLdabTmBvhYGEFwxnN0qvQ43lJWMTK8T9g9a6CrkDVVvn3diJKBGISwMkX1SC2VT9Lg6NN40kwkLusOrB06pTOaxi7EbCWWG7VhvCn2CCyk8Do1zmqMgda0yka1fuWRixiqTE5GajnQLtun6MuQoUQMQOMt24QcNPHviA=s512-rw-pd-pc0x00ffffff',
               fit: BoxFit.fitWidth,
               width: 100,
               height: 100,
             ),
           ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        )
      ],
    );
  }
}
