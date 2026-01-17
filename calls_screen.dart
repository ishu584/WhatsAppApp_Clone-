import 'package:flutter/material.dart';
import 'package:whatsapp_app/app_widgets/call_card.dart';
import 'package:whatsapp_app/screen/add_call_screen.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List<Map<String, dynamic>> callData = [
    {
      "userProfile": "assets/images/add8.png.jpg",
      "userName": "Umang bhai",
      "date": "Today , 6:27 PM",
      "callType": Icons.call,
    },
    {
      "userProfile": "assets/images/add4.png.jpg",
      "userName": "Birju bhai ",
      "date": "Today , 2:19 PM",
      "callType": Icons.call,
    },
    {
      "userProfile": "assets/images/add3.png.jpg",
      "userName": "Mummy",
      "date": "Yesterday , 10:16 PM",
      "callType": Icons.video_camera_back_outlined,
    },
    {
      "userProfile": "assets/images/add2.png.jpg",
      "userName": "PaPa ji ",
      "date": "yesterday , 9:53 PM",
      "callType": Icons.video_camera_back_outlined,
    },
    {
      "userProfile": "assets/images/add.png.jpg",
      "userName": "Priya bhen",
      "date": "January 10 , 10:29 AM",
      "callType": Icons.call,
    },
    {
      "userProfile": "assets/images/add9.png.jpg",
      "userName": "Nishant Bhai",
      "date": "Today , 9:09 AM",
      "callType": Icons.call,
    },
    {
      "userProfile": "assets/images/add11.png.jpg",
      "userName": "Tarun Bhai",
      "date": "12/28/25 , 6:59 PM",
      "callType": Icons.call,
    },
    {
      "userProfile": "assets/images/add10.png.jpg",
      "userName": "Ansh Bhai",
      "date": "January 7 , 7:15 AM",
      "callType": Icons.call,
    },
    {
      "userProfile": "assets/images/add8.png.jpg",
      "userName": "Umang Bhai",
      "date": "yesterday , 4:59 PM",
      "callType": Icons.video_camera_back_outlined,
    },
    {
      "userProfile": "assets/images/add6.png.jpg",
      "userName": "Gungun Didi",
      "date": "11/08/25 , 8:03 PM",
      "callType": Icons.video_camera_back_outlined,
    },
    {
      "userProfile": "assets/images/add5.png.jpg",
      "userName": "Krishna bhai",
      "date": "January 7 , 8:15 AM",
      "callType": Icons.call,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calls",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.qr_code_scanner, size: 30),
          SizedBox(width: 15),
          Icon(Icons.camera_alt_outlined, size: 30),

          /// search icon
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search_rounded, size: 30),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// when click on add button navigator to add call screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCallScreen()),
          );
        },
        child: Icon(Icons.add_call),
        backgroundColor: Color.fromARGB(255, 12, 162, 52),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Favorites",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Add Favorites",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Recent", style: TextStyle(fontSize: 18)),

              SizedBox(height: 15),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: callData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: CallCard(
                      imgPath: "${callData[index]["userProfile"]}",
                      subTitle: "${callData[index]["date"]}",
                      userName: "${callData[index]["userName"]}",
                      callIcon: callData[index]["callType"],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
