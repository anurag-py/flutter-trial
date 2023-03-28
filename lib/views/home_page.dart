import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/controllers/landing_page_controller.dart';
import 'package:website/views/aboutus_page.dart';
import 'package:website/views/batteryacid_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return Obx(() => DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                title: Text("WIC-CHEM PVT LTD"),
                centerTitle: true,
                foregroundColor: Colors.amberAccent,
                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(
                    fontFamily: "Arial",
                    fontSize: 46.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              body: Row(
                children: <Widget>[
                  NavigationRail(
                    elevation: 400.0,
                    selectedIconTheme: IconThemeData(color: Colors.blue),
                    unselectedIconTheme: IconThemeData(color: Colors.black),
                    backgroundColor: Color.fromARGB(255, 235, 214, 207),
                    destinations: const <NavigationRailDestination>[
                      NavigationRailDestination(
                          icon: Icon(Icons.home), label: Text("Home")),
                      NavigationRailDestination(
                          icon: Icon(Icons.info), label: Text("About Us")),
                      NavigationRailDestination(
                          icon: Icon(Icons.inventory),
                          label: Text("Battery Acid")),
                      NavigationRailDestination(
                          icon: Icon(Icons.business),
                          label: Text("Acids & Chemicals")),
                      NavigationRailDestination(
                          icon: Icon(Icons.inventory_2_outlined),
                          label: Text("Plastics")),
                      NavigationRailDestination(
                          icon: Icon(Icons.phone_callback),
                          label: Text("Contact Us")),
                    ],
                    selectedIndex: landingPageController.tabIndex.value,
                    labelType: NavigationRailLabelType.all,
                    onDestinationSelected: (value) {
                      landingPageController.changeTabIndex(value);
                    },
                  ),
                  Text(landingPageController.tabIndex.value.toString()),
                  Expanded(
                      child: IndexedStack(
                    index: landingPageController.tabIndex.value,
                    children: [AboutUs(), BatteryAcid()],
                  ))
                ],
              )),
        ));
  }
}
