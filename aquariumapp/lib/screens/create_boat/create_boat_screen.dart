import 'package:diving_trip_agency/controllers/menuCompany.dart';
import 'package:diving_trip_agency/screens/aboutus/about_us_page.dart';
import 'package:diving_trip_agency/screens/create_boat/create_boat_form.dart';

import 'package:diving_trip_agency/screens/create_trip/create_trip_form.dart';
import 'package:diving_trip_agency/screens/main/components/hamburger_company.dart';
import 'package:diving_trip_agency/screens/main/components/header_company.dart';
import 'package:diving_trip_agency/screens/sectionTitile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class CreateBoat extends StatelessWidget {
  final MenuCompany _controller = Get.put(MenuCompany());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: CompanyHamburger(),
      body: SingleChildScrollView(
        child: Container(
           width: double.infinity,
          // height: 600,
          decoration: BoxDecoration(color: Color(0xFFFFfd8be).withOpacity(0.3)),
          child: Column(
            children: [
              HeaderCompany(),
              SizedBox(height: 50),
                SectionTitle(
                  title: "Create Boat",
                  color: Color(0xFFFF78a2cc),
                ),
                 SizedBox(
                height: 30,
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: CreateBoatForm()),
              SizedBox(
                height: 30,
              )
         
            ],
          ),
        ),
      ),
    );
  }
}
