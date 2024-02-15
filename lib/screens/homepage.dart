import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:emergency_app_ui/screens/contactlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 50,
            top: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("WE'RE SENDING", style: GoogleFonts.poppins(
                  color: Color(0xFF2B2E2F),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                Text("EMERGENCY SUPPORT", style: GoogleFonts.poppins(
                  color: Color(0xFF2B2E2F),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                Text("Don't worry our team will", style: GoogleFonts.poppins(
                  color: Color.fromARGB(249, 99, 96, 96),
                  fontSize: 15,
                ),),
                Text("contact you in next...", style: GoogleFonts.poppins(
                  color: Color.fromARGB(249, 99, 96, 96),
                  fontSize: 15,
                ),),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: CircularCountDownTimer(
              duration: 10,
              initialDuration: 0,
              controller: CountDownController(),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Color(0xFFEA1C1C)!,
              fillGradient: null,
              //backgroundColor: Color(0xFFEA1C1C),
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                fontSize: 33.0, color: Color(0xFFEA1C1C), fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.S,
              isReverse: false,
              isReverseAnimation: false,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
              onChange: (String timeStamp) {
                debugPrint('Countdown Changed $timeStamp');
              },
              timeFormatterFunction: (defaultFormatterFunction, duration) {
                if (duration.inSeconds == 0) {
                  return "Start";
                } else {
                  return Function.apply(defaultFormatterFunction, [duration]);
                }
              },
            ),
          ),
          Positioned.fill(
            top: 400,
            child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 2.0
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text("Emergency Contact", style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                      subtitle: Text("408-747-7238"),
                      trailing: CircleAvatar(
                        backgroundColor: Color(0xFF87AF23),
                        child: Icon(Icons.call, color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
          side: BorderSide(width: 150)
        ),
        backgroundColor: Color(0xFFEA1C1C),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ContactList())
          );
        },
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.home),
              Icon(Icons.calendar_month),
              // Padding(
              //   padding: const EdgeInsets.only(top: 28.0),
              //   child: Text('USE CARD'),
              // ),
              Icon(Icons.folder),
              Icon(Icons.person_outline)
            ],
          ),
        ),
        color: Color.fromARGB(255, 219, 214, 214),
      ),
    );
  }
}