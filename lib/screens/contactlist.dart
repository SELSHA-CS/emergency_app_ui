import 'package:emergency_app_ui/screens/dummydata.dart';
import 'package:emergency_app_ui/widgets/bbbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEA1C1C),
        title: Center(
          child: Text("EMERGENCY CONTACT LIST", style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
          ),),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: const [
          Icon(Icons.add_circle_outline, color: Colors.white, size: 30,),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView.builder(
        itemCount: contact.length,
        itemBuilder: (context, index) => Card(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(contact[index]['img']),
              ),
              title: Text(contact[index]['name'], style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),),
              subtitle: Text(contact[index]['no']),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
        )),
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
        child: const Icon(Icons.ac_unit, color: Colors.white),
        elevation: 0.0,
      ),
      bottomNavigationBar: bbBar(),
    );
  }
}