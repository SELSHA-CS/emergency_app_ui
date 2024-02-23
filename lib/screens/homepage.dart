import 'package:emergency_app_ui/screens/contactlist.dart';
import 'package:emergency_app_ui/widgets/bbbar.dart';
import 'package:emergency_app_ui/widgets/cctimer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
            left: 50, top: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("WE'RE SENDING", style: GoogleFonts.poppins(
                  color: const Color(0xFF2B2E2F),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                Text("EMERGENCY SUPPORT", style: GoogleFonts.poppins(
                  color: const Color(0xFF2B2E2F),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                Text("Don't worry our team will", style: GoogleFonts.poppins(
                  color: const Color.fromARGB(249, 99, 96, 96),
                  fontSize: 15,
                ),),
                Text("contact you in next...", style: GoogleFonts.poppins(
                  color: const Color.fromARGB(249, 99, 96, 96),
                  fontSize: 15,
                ),),
              ],
            ),
          ),
          const Positioned(
            top: 100, left: 100,
            child: CcTimer(),
          ),
          Positioned.fill(
            top: 400,
            child: SizedBox(
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
                      subtitle: const Text("408-747-7238"),
                      trailing: const CircleAvatar(
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
        shape: const CircleBorder(
          side: BorderSide(width: 150)
        ),
        backgroundColor: const Color(0xFFEA1C1C),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ContactList())
          );
        },
        elevation: 0.0,
        child: const Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: const bbBar()
    );
  }
}