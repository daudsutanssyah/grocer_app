import 'package:egrocer_app/pages/register_page.dart';
import 'package:egrocer_app/themes/themes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Masuk",
          style: blackTextStyle,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/ic-back.png",
              width: 20,
              height: 20,
            )),
      ),
      body: ListView(
        children: [
          // Baris Ke 1 Image
          Padding(
            padding: const EdgeInsets.only(top: 94),
            child: Image.asset(
              "assets/app-logo.png",
              width: 90,
              height: 86,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // baris ke 2 Text
          Center(
            child: Text(
              "Belanja Mudah, Hidup Sehat!",
              style: blackTextStyle,
            ),
          ),
          const SizedBox(
            height: 35,
          ),

          // baris ke 3 form
          Container(
            margin: const EdgeInsets.only(top: 11, left: 30, right: 30),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // input email
                  Text(
                    "Email",
                    style: secondaryTextStyle,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/ic-email.png",
                            width: 20,
                            height: 20,
                          )),
                      fillColor: whiteColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: blackColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: blackColor, width: 2.0),
                      ),
                      labelText: 'Masukkan Email',
                      labelStyle:
                          TextStyle(fontSize: 16, color: secondaryColor),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),

                  // input password
                  Text(
                    "Password",
                    style: secondaryTextStyle,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/ic-Padlock.png",
                            width: 20,
                            height: 20,
                          )),
                      fillColor: whiteColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: blackColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: blackColor, width: 2.0),
                      ),
                      labelText: 'Masukkan Password',
                      labelStyle:
                          TextStyle(fontSize: 16, color: secondaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // lupa password
          const SizedBox(
            height: 11,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Text("Lupa Password ?",
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14)),
              )),
          const SizedBox(
            height: 60,
          ),
          //  button login
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 16,
                  color: whiteColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 95,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Belum punya akun?",
                style: TextStyle(color: blackColor, fontSize: 16),
              ),
              const SizedBox(
                width: 1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage(),));
                },
                child: Text(
                  "Daftar",
                  style: TextStyle(color: primaryColor, fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
