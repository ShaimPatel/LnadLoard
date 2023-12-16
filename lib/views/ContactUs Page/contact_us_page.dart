import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:landloard/global/AppBar/drawer_widget.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/res/components/constrians.dart';

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

  final List companyLogos = [
    ImageAssets.clientMoney,
    ImageAssets.dps,
    ImageAssets.findaProperty,
    ImageAssets.globrix,
    ImageAssets.gumtree,
    ImageAssets.lcoLogo,
    ImageAssets.onTheMarket,
    ImageAssets.prs,
    ImageAssets.rla,
    ImageAssets.technosysinfowareltd,
    ImageAssets.zoopla,
  ];

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

//! for Controlling the scrolling
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = true;
        });
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 10.0,
        title: const Image(
          image: AssetImage(
            ImageAssets.smartlink,
          ),
          height: 160,
          width: 160,
        ),
      ),
      endDrawer: const CustomDrawerWidget(),
      floatingActionButton: _isVisible
          ? FloatingActionButton(
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_upward),
            )
          : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //! Image section
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 15, right: 15),
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
              endIndent: 15,
              indent: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: textFieldDesign(
                nameController.text,
                "Your Name",
                nameController,
                true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: textFieldDesign(
                emailController.text,
                "Your Email",
                emailController,
                true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: textFieldDesign(
                subjectController.text,
                "Subject",
                subjectController,
                true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: textFieldDesign(
                messageController.text,
                "Message",
                messageController,
                true,
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: elevatedButton(
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.maxFinite,
              // color: Colors.yellow,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //! Company Logo section ..

            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.maxFinite,
              color: Colors.white,
              child: Center(
                child: CarouselSlider(
                  items: companyLogos.map((logo) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            logo,
                            fit: BoxFit.contain,
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 25 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            //! General Details

            Container(
              height: MediaQuery.of(context).size.height * 1.6,
              width: double.maxFinite,
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  //! 1
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "general".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.blackColor,
                      ),
                    ),
                  ),
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

                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "corporate".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.blackColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "About us",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Services",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Right To Rent",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Landlord",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Tenant",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  //! Legal / Pricacy Policy
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "legal/privacy policy".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.blackColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Terms & Privacy",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Tenancy FAQ's",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Cookies",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Money Laundering",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Tools",
                        style: TextStyle(
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),

                  //! Social
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "social".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.blackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 25),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColor.greenColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                              size: 40,
                            )),
                        const SizedBox(width: 10),
                        const Text(
                          "Whatsapp",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                              size: 40,
                            )),
                        const SizedBox(width: 10),
                        const Text(
                          "Instagram",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColor.blueColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                              size: 40,
                            )),
                        const SizedBox(width: 10),
                        const Text(
                          "Facebook",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColor.blackColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Icon(
                              Icons.whatshot_outlined,
                              color: Colors.white,
                              size: 40,
                            )),
                        const SizedBox(width: 10),
                        const Text(
                          "Twitter",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
