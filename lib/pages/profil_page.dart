import 'package:egrocer_app/themes/themes.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
          style: TextStyle(
              color: blackColor, fontSize: 20, fontWeight: FontWeight.w600),
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
      body: SingleChildScrollView(
  child: Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/user-profil.avif'),
              ),
              Positioned(
                bottom: 0,
                right: -5,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt_rounded),
                    color: primaryColor,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 80,
              child: Card(
                elevation: 0,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.person_4_outlined , size: 35, color: primaryColor,),
                    title: Text("Akun Saya", style: TextStyle(color: primaryColor , fontSize: 16),),
                    trailing: Icon(Icons.arrow_forward_ios , color: primaryColor,),
                    onTap: () {
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 80,
              child: Card(
                elevation: 0,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.notifications_outlined , size: 35, color: primaryColor,),
                    title: Text("Notifikasi", style: TextStyle(color: primaryColor , fontSize: 16),),
                    trailing: Icon(Icons.arrow_forward_ios , color: primaryColor,),
                    onTap: () {
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 80,
              child: Card(
                elevation: 0,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.settings_outlined, size: 35, color: primaryColor,),
                    title: Text("Pengaturan", style: TextStyle(color: primaryColor , fontSize: 16),),
                    trailing: Icon(Icons.arrow_forward_ios , color: primaryColor,),
                    onTap: () {
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 80,
              child: Card(
                elevation: 0,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.logout_outlined, size: 35, color: primaryColor,),
                    title: Text("Keluar", style: TextStyle(color: primaryColor , fontSize: 16),),
                    trailing: Icon(Icons.arrow_forward_ios , color: primaryColor,),
                    onTap: () {
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  ),
),

    );
  }
}
