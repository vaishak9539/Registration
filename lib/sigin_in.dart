import 'package:flutter/material.dart';
import 'package:login_registration/new_account.dart';

class SiginIn extends StatefulWidget {
  const SiginIn({super.key});

  @override
  State<SiginIn> createState() => _SiginInState();
}

class _SiginInState extends State<SiginIn> {
  var secureText = true;
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 420,
              width: double.infinity,
              child: Image.asset(
                "assets/images/sign-in.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 50,
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2))),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 50,
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              secureText = !secureText;
                            });
                          },
                          icon: Icon(secureText
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2))),
                  keyboardType: TextInputType.number,
                  obscureText: secureText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Checkbox(
                      value: check,
                      onChanged: (val) {
                        setState(() {
                          check = val;
                        });
                      }),
                  Text(
                    "Remember me",
                    style: TextStyle(fontSize: 13),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text("Forgot Password?"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 300,
                    child: Center(
                        child: Text(
                      "Sigin in",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[400],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New here?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return NewAccount();
                      }));
                    },
                    child: Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
