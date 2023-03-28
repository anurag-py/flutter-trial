import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/controllers/landing_page_controller.dart';
import 'package:website/views/aboutus_page.dart';
import 'package:website/views/batteryacid_page.dart';
import 'package:website/views/home_page.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("WIC-CHEM PVT LTD"),
        titleTextStyle: TextStyle(
            fontFamily: "Arial",
            fontSize: 46.0,
            color: Color.fromARGB(255, 156, 123, 24),
            fontWeight: FontWeight.bold),
        actions: [
          MediaQuery.of(context).size.width > 640
              ? ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonAlignedDropdown: true,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Home")),
                    TextButton(onPressed: () {}, child: Text("About Us")),
                    TextButton(onPressed: () {}, child: Text("Battery Acid")),
                    TextButton(onPressed: () {}, child: Text("Acids")),
                    TextButton(onPressed: () {}, child: Text("Plastics")),
                    TextButton(onPressed: () {}, child: Text("Contact Us")),
                    // DropdownButton(items: [], onChanged: onChanged)
                  ],
                )
              : IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                )
        ],
      ),
    ));
  }
}
