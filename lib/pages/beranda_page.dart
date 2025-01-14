import 'package:egrocer_app/themes/themes.dart';
import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: whiteColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(2),
                elevation: 0),
            child: Image.asset(
              "assets/ic-Menu.png",
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                "assets/Appbar-Logo.png",
                width: 175,
                height: 175,
              ),
            ),
          ],
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: whiteColor,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(5.0),
              elevation: 0,
            ),
            child: Image.asset(
              "assets/ic-Search.png",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Stack(
            children: [
              Image.asset("assets/img-homes.png",
              ),
              Positioned(
                top: 50,
                left: 36,
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Text("Belanja Kebutuhan", style: TextStyle(
                    color: blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),),
                  Text("Harian Anda", style: TextStyle(
                    color: blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),),
                  const SizedBox(height: 5,),
                  Text("#Free Ongkir", style: TextStyle(
                    color: secondaryColor,
                    fontWeight: FontWeight.w600
                  ),),
                 ],
                ),
                ),
            ],
            ),
        ),
      ),
    );
  }
}
