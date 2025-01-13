import 'package:egrocer_app/pages/login_page.dart';
import 'package:egrocer_app/themes/themes.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mendaftar",
          style: blackTextStyle,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            icon: Image.asset(
              "assets/ic-back.png",
              width: 30,
              height: 30,
            )),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                // judul
                "Daftar Akun",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          ...["Lengkapi semua informasi untuk", "membuat akun di Grocer."]
              .map((text) => Center(
                    child: Text(
                      text,
                      style: TextStyle(color: blackColor),
                    ),
                  )),
          // form input
          Container(
            margin: const EdgeInsets.only(
              top: 30,
              right: 30,
              left: 30,
            ),
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    labelStyle: TextStyle(fontSize: 16, color: secondaryColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    labelStyle: TextStyle(fontSize: 16, color: secondaryColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Konfirmasi Password",
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
                    labelStyle: TextStyle(fontSize: 16, color: secondaryColor),
                  ),
                ),
              ],
            )),
          ),
          const SizedBox(height: 60,),
          //  button daftar
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
                "Mendaftar",
                style: TextStyle(
                  fontSize: 16,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
