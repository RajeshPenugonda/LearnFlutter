import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Text(
          "Welcome",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: GoogleFonts.lato().fontFamily),
        ),
        const SizedBox(
          height: 48,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    ),),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    ),),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        ElevatedButton(
            onPressed: () {
              print("Logged In Successfully....");
            },
            child: const Text("Log In")),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            "assets/images/undraw_enter_uhqk.png",
            height: 250,
            width: 250,
          ),
        )
      ],
    ));
  }
}
