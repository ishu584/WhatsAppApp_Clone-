import 'package:flutter/material.dart';

class UserCallScreen extends StatefulWidget {
  String userName;
  String userProfile;

  UserCallScreen({required this.userName, required this.userProfile});

  @override
  State<UserCallScreen> createState() => _UserCallScreenState();
}

class _UserCallScreenState extends State<UserCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,

      /// ------------------BODY-------------------------//
      body: Stack(
        children: [
          ///-----------------------background images-------------//
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              "assets/images/Wallpaper.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),

                /// header part text and add user icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// end-of-end
                    Expanded(
                      flex: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 40),
                          Text(
                            "End-of-End",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),

                    /// add icon
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.person_add_alt,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    image: DecorationImage(
                      image: AssetImage(widget.userProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                /// -----------------------name--------------------//
                Text(
                  widget.userName,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                /// ---------------------calling-------------------//
                Text(
                  "calling",
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),

      /// botton sheet create here
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.volume_up_outlined, size: 35, color: Colors.white),
            Icon(Icons.bluetooth, size: 35, color: Colors.white),
            Icon(
              Icons.video_camera_back_outlined,
              size: 35,
              color: Colors.white,
            ),
            Icon(Icons.mic_off, size: 35, color: Colors.white),
            InkWell(
              /// when click on red button navigate to typing screen
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.call_end_outlined,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
