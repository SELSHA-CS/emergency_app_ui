import 'package:emergency_app_ui/screens/contactlist.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(190, 0, 0, 0),
      body: Stack(
        children: [
          const Positioned(
            top: 150,
            left: 100,
            child: Column(
              children: [
                Text("(407) 734 - 0254", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                Text("calling...", style: TextStyle(
                  color: Colors.white, fontSize: 20
                ),)
              ],
            ),
          ),
          const Positioned(
            top: 300,
            left: 70,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.mic_off),
                    ),
                    SizedBox(width: 25,),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.dialpad),
                    ),
                    SizedBox(width: 25,),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.volume_up),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 25,),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.video_call),
                    ),
                    SizedBox(width: 25,),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 150,
            left: 170,
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const ContactList())
                );
              },
              child: const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.red,
                child: Icon(Icons.call_end, color: Colors.white, size: 30,),
              ),
            ),
          )
        ],
      ),
    );
  }
}