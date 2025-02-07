import 'package:flutter/material.dart';
import 'package:quiz_app_demo/screens/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:TextTheme(
          headlineLarge: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400)),
          headlineMedium: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w400)),
          headlineSmall: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 8,color: Colors.black,fontWeight: FontWeight.w400)),
          bodySmall: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 8,color: Color.fromRGBO(34, 33, 33, 1),fontWeight: FontWeight.w400)),
          labelSmall: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 6,color: Color(0x00d6e6ff),fontWeight: FontWeight.w500)),
          labelLarge: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 14,color: Color(0x00d6e6ff),fontWeight: FontWeight.w500)),
          labelMedium: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 10,color: Color(0x00d6e6ff),fontWeight: FontWeight.w500)),
        )
      ),
      home:  MyHomePage(),
    );
  }
}

//HomePage.dart file | where using theme
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade300,
              child: const Icon(Icons.person),
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emtiaz Ahmed',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                    'ID-1045',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ElevatedButton.icon(
                onPressed: (){},
                label: Text('150',style: Theme.of(context).textTheme.headlineLarge,),
              icon: Icon(Icons.diamond_outlined,color: Colors.black,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade100,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
