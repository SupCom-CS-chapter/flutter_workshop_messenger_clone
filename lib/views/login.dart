import 'package:flutter/material.dart';
import 'navigation_frame.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final identifier = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.15),
              SizedBox(
                width: size.width * 0.3,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 25),
              const Text("Log in with your phone number or Facebook account.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04, vertical: 25),
                child: TextField(
                  controller: identifier,
                  decoration: InputDecoration(
                    hintText: 'Email or phone number',
                    hintStyle:
                        TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04, vertical: 25),
                child: TextField(
                  controller: identifier,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    suffixIcon: const Icon(Icons.visibility_off),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavigationFrame()));
                  },
                  child: Text("LOG IN",
                      style: TextStyle(color: Colors.grey.shade400)),
                  color: Colors.grey.shade200,
                  elevation: 0,
                  minWidth: size.width * 0.9,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text("CREATE ACCOUNT",
                      style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  elevation: 0,
                  minWidth: size.width * 0.9,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "You will not be creating a Facebook Profile",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FORGOT PASSWORD?", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
