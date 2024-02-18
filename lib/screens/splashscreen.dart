import 'package:emergency_app_ui/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0, left: 0,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/emergency_images/1.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )
              ),
            ),
          ),
          Positioned(
            bottom: 150, left: 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("EMERGENCY", style: GoogleFonts.poppins(
                  color: const Color(0xFFEA1C1C),
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
                Text("ASSISTANCE FOR", style: GoogleFonts.poppins(
                  color: const Color(0xFFEA1C1C),
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
                Text("CUSTOMERS", style: GoogleFonts.poppins(
                  color: const Color(0xFFEA1C1C),
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(249, 99, 96, 96),
                        fontSize: 15,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.visible, 
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20, left: 50,
            child: MaterialButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage())
                );
              },
              color: const Color(0xFFEA1C1C),
              minWidth: 300,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Text("Let's get started", style: GoogleFonts.poppins(
                    color: Colors.white
                  ),),
                  const SizedBox(width: 10,),
                  const Icon(Icons.arrow_forward, color: Colors.white,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}