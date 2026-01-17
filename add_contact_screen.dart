import 'package:flutter/material.dart';
import 'package:whatsapp_app/app_widgets/my_user_card.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({super.key});

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ----app bar-----------//
      appBar: AppBar(
        title: Text("Select contact "),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
        actions: [Icon(Icons.search_rounded), Icon(Icons.more_vert)],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ---new grouo--
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.supervisor_account_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(width: 8),
                  Text(
                    "New group",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),

            ///------New Contact----------------///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.person_add_alt_1_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(width: 8),
                  Text(
                    "New contact",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            SizedBox(height: 22),

            ///------New Community----------------///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.supervisor_account_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(width: 8),
                  Text(
                    "New community",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Text(
                "contacts on WhatsApp",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(height: 20),

            /// here call user my user card
            MyUserCard(
              imgPath: "assets/images/new.png.jpg",
              subTitle: "Music is my escape ",
              userName: "Preet Bhaiya",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new3.png.jpg",
              subTitle: "Hey there! i am using whatsApp",
              userName: "Chinu",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new1.png.jpg",
              subTitle: "Dream big,achieve bid!",
              userName: "Himanshu",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new2.png.jpg",
              subTitle: "Smile, it confuses people",
              userName: "Golu ",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new3.png.jpg",
              subTitle: "Hey there! i am using whatsApp",
              userName: "Tushar Tyagi",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new4.png.jpg",
              subTitle: "Living life one laugh at a time ",
              userName: "Sunny Bhaiya",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new2.png.jpg",
              subTitle: "Hey there! i am using whatsApp",
              userName: "Kuldeep Tau",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new3.png.jpg",
              subTitle: "Exploring the beauty of life",
              userName: "Arshad",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new.png.jpg",
              subTitle: "Just chilling with a cup of tea ",
              userName: "Vishu Bhaiya ",
            ),
            SizedBox(height: 16),
            MyUserCard(
              imgPath: "assets/images/new1.png.jpg",
              subTitle: "Hey there! i am using whatsApp",
              userName: "Vinod Tyagi",
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
