import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_app/app_widgets/channels_follow_card.dart';
import 'package:whatsapp_app/app_widgets/my_user_card.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  ImagePicker imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///app bar is same so we copy
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
            child: Icon(Icons.camera_alt_outlined, size: 30),
          ),

          /// search icon
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search_rounded, size: 30),
          ),
        ],
      ),

      /// camera floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// when click on camera button open camera or imager picker
          /// add image picker dependency
          imagePicker.pickImage(source: ImageSource.camera);
        },
        backgroundColor: const Color.fromARGB(255, 8, 174, 41),
        foregroundColor: Colors.white,
        child: const Icon(Icons.camera_alt_sharp, size: 30),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// status Text
            const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Status",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            ///user status part done
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    /// add status
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/add15.png.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(200),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: const Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(color: Colors.black, blurRadius: 2),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),

                    /// first user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),

                    /// Second user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add2.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),

                    /// third user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add5.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),

                    /// fourth user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add9.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),

                    /// fifth user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add8.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),

                    /// Sixth user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add4.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/add3.png.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
            ),

            const Divider(thickness: 1.5),

            /// channels part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Channels",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Row(
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 25,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// here we call my user card
            MyUserCard(
              imgPath: "assets/images/Pkl.png.jpg",
              subTitle: "which Iranian Impressed you the most in #PKL 12?",
              userName: "Pro Kabaddi League",
              numberMess: "15",
            ),
            const SizedBox(height: 5),
            MyUserCard(
              imgPath: "assets/images/Mi.png.jpg",
              subTitle: "Toofan Hitting in Ahmedabad 💙",
              userName: "Mumbai Indians",
              numberMess: "35",
            ),
            const SizedBox(height: 5),
            MyUserCard(
              imgPath: "assets/images/modi.png.jpg",
              subTitle: "The story of Somnath! 1000 years of unbroken",
              userName: "Narendra Modi",
              numberMess: "9",
            ),
            const SizedBox(height: 5),
            MyUserCard(
              imgPath: "assets/images/gym.png.jpg",
              subTitle: "ART OF LIFE 🏆",
              userName: "The Gym Rats",
              numberMess: "18",
            ),
            const SizedBox(height: 5),

            const SizedBox(height: 10),
            const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Find Channels to follow",
                style: TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
            ),

            ChannelsFollowCard(
              imgPath: "assets/images/news1.png.jpg",
              subTitle: "200 M Followers",
              userName: "Ajjtak",
            ),
            const SizedBox(height: 10),

            ChannelsFollowCard(
              imgPath: "assets/images/dd news.png.jpg",
              subTitle: "50 M Followers",
              userName: "DD news",
            ),
          ],
        ),
      ),
    );
  }
}
