import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_app/app_widgets/my_search_box.dart';
import 'package:whatsapp_app/app_widgets/my_user_card.dart';
import 'package:whatsapp_app/screen/add_contact_screen.dart';
import 'package:whatsapp_app/screen/typing_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ///here we create
  ///here we create static data set
  List<Map<String, dynamic>> chatData = [
    {
      "profileImg": "assets/images/add.png.jpg",
      "userName": "Priya bhen",
      "message": "sun bhai ",
      "messageNumber": "1",
    },
    {
      "profileImg": "assets/images/add3.png.jpg",
      "userName": "Mummy",
      "message": "Ghr Aja jldi se ",
      "messageNumber": "1",
    },
    {
      "profileImg": "assets/images/add2.png.jpg",
      "userName": "PaPa ji ",
      "message": "kaha ha ",
      "messageNumber": "2",
    },
    {
      "profileImg": "assets/images/add8.png.jpg",
      "userName": "Umang bhai",
      "message": "okay 👍",
      "messageNumber": "",
    },
    {
      "profileImg": "assets/images/add4.png.jpg",
      "userName": "Birju bhai",
      "message": "Nusa chalo",
      "messageNumber": "1",
    },
    {
      "profileImg": "assets/images/add9.png.jpg",
      "userName": "Nishant Bhai",
      "message": "Ajj Chalaga Coaching",
      "messageNumber": "2",
    },
    {
      "profileImg": "assets/images/add6.png.jpg",
      "userName": "Gungun didi",
      "message": "kesa ha bhai ",
      "messageNumber": "3",
    },
    {
      "profileImg": "assets/images/add5.png.jpg",
      "userName": "Krishna bhai ",
      "message": "kal subha time se ajaiyo",
      "messageNumber": "2",
    },
    {
      "profileImg": "assets/images/add10.png.jpg",
      "userName": "Ansh",
      "message": "Happy New Year Bhai 😊",
      "messageNumber": "2",
    },
    {
      "profileImg": "assets/images/add11.png.jpg",
      "userName": "Tarun Bhai",
      "message": "Hello Bhai",
      "messageNumber": "1",
    },
  ];

  ImagePicker imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        actions: [
          Icon(Icons.qr_code_scanner, size: 30),
          SizedBox(width: 15),
          InkWell(
            onTap: () {
              imagePicker.pickImage(source: ImageSource.camera);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.camera_alt_outlined, size: 30),
            ),
          ),
        ],
      ),

      /// chat add button
      floatingActionButton: FloatingActionButton(
        /// when click on this chat add button navigate to add contact screen
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddContactScreen()),
          );
        },
        backgroundColor: Colors.green,
        child: Image.asset(
          "assets/icon/add.png",
          height: 35,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MySearchBox(
                searchHit: "Ask Meta Al or Search",
                iconPath: "assets/icon/metaicon.gif",
              ),
            ),

            /// here we call screen
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: chatData.length,

              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TypingScreen(
                            userName:
                                chatData[index]["userName"] ?? "no userName",
                            userProfile:
                                chatData[index]["profileImg"] ?? "no profile",
                          ),
                        ),
                      );
                    },
                    child: MyUserCard(
                      imgPath: chatData[index]["profileImg"],
                      subTitle: chatData[index]["message"],
                      userName: chatData[index]["userName"],
                      numberMess: chatData[index]["messageNumber"],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// Chat Screen Complete
