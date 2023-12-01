import 'package:flutter/material.dart';
import 'package:landloard/global/AppBar/drawer_widget.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/res/components/Constrians.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage(
            ImageAssets.smartlink,
          ),
          height: 160,
          width: 160,
        ),
      ),
      endDrawer: const CustomDrawerWidget(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //! Image section
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage(
                        ImageAssets.services,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //! Details ..
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.location_on,
                    color: AppColor.yellowColor,
                  ),
                ),
                title: Text("89 Vicarage Lane , "),
                subtitle: Text("London E15 4HG"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.punch_clock,
                    color: AppColor.yellowColor,
                  ),
                ),
                title: Text("Mon - Fri 10am-6pm "),
                subtitle: Text("Saturday Appointments Only"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.mail,
                    color: AppColor.yellowColor,
                  ),
                ),
                title: Text("info@smartlinkestates.com"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.call,
                    color: AppColor.yellowColor,
                  ),
                ),
                title: Text("020 7100 0999"),
              ),

              //! Contact Us .
              const SizedBox(height: 25),
              const Center(
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColor.greenColor,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CustomeDividerWidget(
                thickness: 1,
                height: 1,
                color: AppColor.greyColor,
              ),
              TextField_Design(
                nameController.text,
                "Your Name",
                nameController,
                true,
              ),
              TextField_Design(
                nameController.text,
                "Your Email",
                nameController,
                true,
              ),
              TextField_Design(
                nameController.text,
                "Subject",
                nameController,
                true,
              ),
              TextField_Design(
                nameController.text,
                "Message",
                nameController,
                true,
              ),
              const SizedBox(height: 25),
              Center(
                child: Elevated_Button(
                  "SEND MESSAGE",
                  () => null,
                  200.0,
                  14,
                  AppColor.whiteColor,
                  AppColor.greenColor,
                  25,
                ),
              ),

              //! Google Map section ..
              const SizedBox(height: 50),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.maxFinite,
                color: Colors.yellow,
              ),

              //! Company Logo section ..

              const SizedBox(
                height: 125,
              )
            ],
          ),
        ),
      ),
    );
  }
}
