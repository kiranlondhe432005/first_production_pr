import 'package:flutter/material.dart';

import 'company_verification.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'welcome page',

    // home: const MyHomePage(title: ''),
      home: const CompanyVerification(),


    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),

            Text(
              "What Brings You Here ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "This is your journey, choose how you want to grow.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 14),

            GestureDetector(
                 onTap:(){

                   //  we can add further screen

                   //

                 },
                child: Image.asset('assets/personal_growth.png'),

            ),

            SizedBox(height: 10),

            GestureDetector(
               onTap:(){
               // we can ADd further screen

                 //

            },
              child: Image.asset('assets/organization.png'),
            ),


            SizedBox(height: 10),

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
                children: [
                  const TextSpan(
                    text: 'By selecting a path you agree to our\n',
                  ),
                  const TextSpan(
                    text: 'Terms of services',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' and '),
                  const TextSpan(
                    text: 'privacy Policy.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),







          ],
        ),
      ),
    );
  }
}
