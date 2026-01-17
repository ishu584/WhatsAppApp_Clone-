import 'package:flutter/material.dart';
import 'package:whatsapp_app/screen/user_call_screen.dart';

class TypingScreen extends StatefulWidget {
  /// here we create constructor
  String? userName;
  String? userProfile;

  TypingScreen({this.userName, this.userProfile});

  @override
  State<TypingScreen> createState() => _TypingScreenState();
}

class _TypingScreenState extends State<TypingScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> userMessage = [
      {"type": "receiver", "message": "Hello! How are you?"},
      {"type": "sent", "message": "Hi! I am good. How about you?"},
      {
        "type": "receiver",
        "message": "I am doing great, thank you! What's new with you?",
      },
      {
        "type": "sent",
        "message":
            "Nothing much, just working on a few projects.What about you?",
      },
      {
        "type": "receiver",
        "message": "Same here. Work has been keeping me busy lately.",
      },
      {
        "type": "sent",
        "message":
            "I understand. By the way. did you watch the game last night?",
      },
      {
        "type": "receiver",
        "message":
            "oh yes! It was an amazing match. I couldn't take my eyes off the screen.",
      },
      {
        "type": "sent",
        "message": "Absolutely! That last-minute wicket was incredible.",
      },
      {"type": "receiver", "message": "True! it was a game-changing ball."},
      {
        "type": "sent",
        "message":
            "Indeed. Let's catch up this weekend and talk more about it.",
      },
      {"type": "receiver", "message": "oky"},
      {"type": "sent", "message": "okay 👍"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: DecorationImage(
                  image: AssetImage(
                    widget.userProfile ?? "assets/images/gym.png.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(widget.userName ?? "userName"),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(Icons.video_call, size: 25),
          ),

          /// call button
          /// when click on call button navigate to user call screen
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  ///-------here we send info accoding to user
                  builder: (context) => UserCallScreen(
                    userName: widget.userName!,
                    userProfile: widget.userProfile!,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Icon(Icons.call, size: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(Icons.more_vert, size: 25),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/back.png.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white38,
          ),
          ListView.builder(
            itemCount: userMessage.length,
            itemBuilder: (context, index) {
              final message = userMessage[index];
              return Align(
                alignment: message['type'] == 'sent'
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: message['type'] == 'sent'
                        ? Colors.green.shade300
                        : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    message['message'],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              );
            },
          ),

          /// here create bottom message  box
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 3),
                          ],
                        ),
                        child: Row(
                          children: [
                            /// emoji button
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Icon(
                                Icons.emoji_emotions_outlined,
                                size: 30,
                              ),
                            ),

                            /// text field
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Message",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),

                            ///attach file
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(Icons.attach_file, size: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(Icons.currency_rupee, size: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Icon(
                                Icons.photo_camera_outlined,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.mic, size: 35),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/// add contact screen 