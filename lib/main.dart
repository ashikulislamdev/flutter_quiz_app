import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter RS Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen()
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/exam.png", fit: BoxFit.cover, width: MediaQuery.of(context).size.width / 2),
            const SizedBox(height: 20,),
            Text("Welcome \nRS Dev Quiz App", style: GoogleFonts.adventPro(fontSize: 25, color: Colors.deepPurple) ,),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 20)
                )
              ),
              onPressed: (){},
              child: Text("Sign in with Google", style: GoogleFonts.alegreya(fontSize: 21),),
            )
          ],
        ),
      ),
    );
  }
}