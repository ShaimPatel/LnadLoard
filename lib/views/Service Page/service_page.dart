import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';
import 'package:landloard/res/colors/app_color.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';
import '../../res/components/Constrians.dart';
import '../HomePage/widgets/our_services.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
//?
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

  void scrollTo() {
    _scrollController.animateTo(0.0,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

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
      floatingActionButton: _isVisible
          ? FloatingActionButton(
              onPressed: scrollTo,
              child: const Icon(Icons.arrow_upward),
            )
          : null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //! 1 section ..
            Container(
              height: MediaQuery.of(context).size.height * 1.72,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: OurServiceWidget(
                            icon: Icons.home,
                            onPres: () {},
                            title: "Residential Sales",
                            subtitle:
                                "Selling your home is a definitely a journey, and one that we as agents want to guide you through.",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OurServiceWidget(
                            icon: Icons.person_2_rounded,
                            onPres: () {},
                            title: " Commercial Sales",
                            subtitle:
                                "Smart Link Estates provide a bespoke service advising you on the sale, leasing, management and acquisition of commercial property.",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: OurServiceWidget(
                            icon: Icons.home,
                            onPres: () {},
                            title: " Let and Management ",
                            subtitle:
                                "Smart Link Estates are a professional managing agent; our property management department ...",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OurServiceWidget(
                            icon: Icons.mouse_rounded,
                            onPres: () {},
                            title: "Buyers",
                            subtitle:
                                "Guide to buying a property A step-by-step guide to each stage of buying a property...",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: OurServiceWidget(
                            icon: Icons.home,
                            onPres: () {},
                            title: " Let and Management ",
                            subtitle:
                                "Smart Link Estates are a professional managing agent; our property management department ...",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OurServiceWidget(
                            icon: Icons.mouse_rounded,
                            onPres: () {},
                            title: "Buyers",
                            subtitle:
                                "Guide to buying a property A step-by-step guide to each stage of buying a property...",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //! 2 section

            Container(
              height: MediaQuery.of(context).size.height * 1.1,
              width: double.maxFinite,
              color: AppColor.whiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Landlords",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor),
                    ),
                    const SizedBox(height: 5),
                    CustomeDividerWidget(
                      color: AppColor.greenColor,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Our fully trained and dedicated agents are here to assist and advise you with all aspects of letting and selling your property, whether it is your own home or a property you have purchased for investment purposes.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We offer four levels of service, let only, rent collection, management and guaranteed rent but aim to be as flexible as possible and appreciate that personal circumstances may require us to do more or less than our standard service packages.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We pride ourselves on being able to provide our clients with a bespoke service that best suits your needs and requirements. ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Smart Link Estates are members of Property Redress Scheme.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "For further information on our bespoke services call our office today.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 20),
                    Elevated_Button(
                      "See more",
                      () => null,
                      150.0,
                      15,
                      AppColor.whiteColor,
                      AppColor.greenColor,
                      25,
                    ),
                    const Expanded(
                      child: Image(
                        image: AssetImage(ImageAssets.home3),
                        width: double.maxFinite,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //! 3 Residential Sales
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 2.35,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: AppColor.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Residential Sales ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor),
                    ),
                    const SizedBox(height: 5),
                    CustomeDividerWidget(
                      color: AppColor.greenColor,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Selling your home is a definitely a journey, and one that we as agents want to guide you through. If you have sold properties before or are thinking of selling for the first time, we want to make sure we can give you the correct advice information to guide and help you sell in the quickest time, with the least hassle and for the best price achievable.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "First step of the selling process is very important. Choosing an estate agent to sell your house and we advice starting this research early as there are several different options. Before booking your valuation you should make sure you find the agent, you believe, can do the best job for you.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "There are two different types of agents to choose from such as, online-only agents, and sole traders for you to choose from, all with different costs and benefits.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "A good agent will help you to get the best value for your property, save you time and save you stress, where as a poor agent could do the exact opposite, charging you less but delivering a lower price at more hassle.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "It is important the estate agent you choose, you can trust to put your best interests at heart. So how do you get started to find the perfect agent for you?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Create a shortlist of estate agents",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "1. You can do this by getting a list of agents to choose from down to three, then invite them out to do a valuation. To do this you should:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "2. Ask trusted friends and family – nothing is more powerful than someone you know offering their recommendation from recent experience",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "3. Compare local agents based on their recent reviews online. After friends and family, other consumers are your next best point of reference",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "4. Check they sell properties like yours. In your postcode, in your value range and of your property type.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "5. Look at how they market a property. Will they give you maximum exposure? Are their property photographs well taken? Do you believe they will market yours effectively?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "6. Always check their viewings policy. Make sure they do not charge you for extras like this. A great agent will accompany all viewings where possible to understand the buyers’ needs and sell to them accordingly.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Making your final decision",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Choose an agent based on how you feel they will look after you during the entire process of the sale, not just based on fee. Many agents are optimistic with their valuation to win your business, only to reduce the price later. Make sure you are confident an agent has used comparable evidence and recent transaction examples when they give you your price.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "You may also want to consider agents who offer additional services, such as sales progression, doing more to help ensure your sale goes through once an offer is accepted.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "An agent who works hard on your behalf to get you the best price, can save you a lot of money in the long run. Make sure you “get on” with the valuer that comes out and you trust them. Your relationship with your agent is one of the most important things so you must feel confident they will pick up the phone when you need and help you get all the way to completion.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Our Residential Selling Fees  ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "SOLE AGENCY 1%",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "MULTIPLE 2%",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),

            //!
            Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: AppColor.greenColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.phone_android_outlined,
                          color: AppColor.whiteColor,
                        ),
                        Text(
                          "Find out your home's value",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.whiteColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Get a free online estimate of your home's current value",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greyColor),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: elevatedBorderButton(
                        "enquire with us".toUpperCase(),
                        () => null,
                        200.0,
                        14,
                        AppColor.yellowColor,
                        AppColor.greenColor,
                        5,
                        AppColor.yellowColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //! 4 Commercial Sales
            Container(
              height: MediaQuery.of(context).size.height * 1.1,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      "Commercial Sales",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor),
                    ),
                    const SizedBox(height: 5),
                    CustomeDividerWidget(
                      color: AppColor.greenColor,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Smart Link Estates provide a bespoke service advising you on the sale, leasing, management and acquisition of commercial property.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We work closely with you to formulate the perfect strategy which will support your business objectives.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Additionally, we also offer a search service to help you find the best property available on the market.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We specialise in Commercial Property Acquisitions & Lettings",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We can assist you in finding the perfect property within a range of industry sectors including :",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Offices",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Restaurants",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Retail",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Industrial",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Educational",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Leisure",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Land",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Our Commercial Selling Fees (terms & conditions apply)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "SOLE AGENCY (T/C apply)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "MULTIPLE (T/C apply)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),

            //! 6 Let and Management

            Container(
              height: MediaQuery.of(context).size.height * 3.15,
              width: double.maxFinite,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Commercial Sales",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor),
                    ),
                    const SizedBox(height: 5),
                    CustomeDividerWidget(
                      color: AppColor.greenColor,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Smart Link Estates are a professional managing agent; our property management department provides advice and administrative support service regarding any residential lettings issues that arise regarding your property on a day to day basis 365 days a year.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Our Services",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We offer residential lettings management service which offers a partialletting service right up to a full comprehensive property management service, all options of service can be tailored on a bespoke basis, specific terms may apply.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Our aim is to be as transparent and honest about our fees as possible which will enable you and help you make informed decisions without any surprises.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Fees vary depending on our 4 service levels (Let Only, Rent Collection or Management, Guaranteed Rent)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Room let",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blueColor.withOpacity(0.6)),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        // color: AppColor.blueColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage(ImageAssets.commercial),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Let Only Services",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Two weeks rent upfront",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Let and Rent Collection",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "£50 per month (no upfront fees)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Let Only Services 10% (Upfront)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Subject to a minimum fee of £1000.00 ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Let and Rent Collection 8% (monthly) Two weeks rent upfront",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Subject to a minimum fee of £80.00 pm ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Management 12% (monthly) One week’s rent upfront",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Subject to a minimum fee of £100.00 pm ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Guaranteed Rent 15% (monthly) No upfront fees",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Subject to a minimum fee of £150.00 pm ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Total Fees are dependent on Service Level and Rental Values ",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Additional services fees",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor),
                    ),
                    CustomeDividerWidget(
                      color: AppColor.greenColor,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        // color: AppColor.blueColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage(ImageAssets.home2),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Key cutting ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '(the price is excluding the cost of key) ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£15.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Additional Property Visits beyond the first ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '(first included within lettings fee)',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£90.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Income & Expenditure Report ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£60.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Gas Safety Certificate ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£80.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Electrical Safety Certificate ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£120.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Energy Performance Certificate ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£85.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Portable Appliance Test  ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£65.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Application of Property License  ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£190.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Tenancy renewal ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£250.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Tenant Referencing Fees ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£50.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '(Per Tennant/Guarantor) These fees are due even when a reference has failed. ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Court attendance for eviction per appearance ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '(Not available with Let Only Service) ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£300.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Court attendance for any other matters per appearance ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£350.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: '(Not available with Let Only Servic) ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Attendance at property with Bailiff  ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '(Not available with Let Only Service) ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£150.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Key cutting ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '(the price is excluding the cost of key) ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£15.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Disputed Deposits – Full management only: for preparing and forwarding the required documentation to the relevant scheme’s Case Examiner. ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: '£100.00',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //!  7 Our service
            const Text(
              "Our Services ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const SizedBox(height: 5),
            CustomeDividerWidget(
              color: AppColor.greenColor,
              endIndent: 10,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    // borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColor.blackColor,
                    )),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: DataTable(
                      dividerThickness: 1,
                      decoration: const BoxDecoration(
                        color: AppColor.greenColor,
                      ),
                      columns: const <DataColumn>[
                        DataColumn(label: Text('')),
                        DataColumn(
                          label: Text(
                            'Let Only',
                            style: TextStyle(
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ),
                        DataColumn(
                            label: Text(
                          'Rent Collection',
                          style: TextStyle(
                            color: AppColor.whiteColor,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Management',
                          style: TextStyle(
                            color: AppColor.whiteColor,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Guaranteed Rent',
                          style: TextStyle(
                            color: AppColor.whiteColor,
                          ),
                        )),
                      ],
                      rows: [
                        //! 1
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            selected: true,
                            cells: const [
                              DataCell(Text(
                                'Comprehensive marketing \nto find the right tenant',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 2
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Obtaining tenant references',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 3
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Tenant identity verification',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),

                        // Add more DataRow widgets for other services...
                        //! 4
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Preparation of tenancy agreement',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 5
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Pre-tenancy safety checks',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 6
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Initial Collections of Rent & Deposit',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 7
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Collection of rent',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 8
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Arranging pre-tenancy clean &\n inventory check-in (charges apply)			',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 9
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'available 24/7',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 10
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Transfer of utilities',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 11
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Deposit claim negotiation,\n compilation & submission',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 12
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Keyholding service	',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 13
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Arranging payment of outgoings	',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 14
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Arranging quotes, repairs & maintenance',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 15
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Access to panel of vetted contractors',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 16
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                '24-hour emergency contractors',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 17
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Property inspections',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 18
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Managing the check-out process',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 19

                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return AppColor.whiteColor;
                                }
                                return AppColor.greyColor.withOpacity(0.4);
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Local authority licence application support',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                        //! 20
                        DataRow(
                            color: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey;
                                }
                                return Colors.white;
                              },
                            ),
                            cells: const <DataCell>[
                              DataCell(Text(
                                'Guaranteed Rent',
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.wrongImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                              DataCell(Image(
                                image: AssetImage(ImageAssets.correctImage),
                                fit: BoxFit.contain,
                                height: 30,
                                width: 30,
                              )),
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //!  8  Property Maintenance

            Container(
                height: MediaQuery.of(context).size.height * 1,
                width: double.maxFinite,
                color: AppColor.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      const Text(
                        "Property Maintenance",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColor.greenColor),
                      ),
                      const SizedBox(height: 5),
                      CustomeDividerWidget(
                        color: AppColor.greenColor,
                        endIndent: 10,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Searching for your next home can stressful and consume a lot of time and energy.",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: AppColor.greenColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          // color: AppColor.blueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                            image: AssetImage(ImageAssets.commercial),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Full range of services our service starts with finding one tenant and can extend right up to the wide management of a whole portfolio.",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColor.blackColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "We let properties, we collect rent, we can insure your property and its contents, and we can guarantee you will receive the rent. We can also manage your properties to the extent that you need never get involved. Whatever service you need, we work hard to make you feel we are good value for the fees we charge.",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColor.blackColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "We also pay rents promptly giving you peace of mind, every step of the way.",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColor.blackColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Elevated_Button(
                        "See more",
                        () => null,
                        150.0,
                        15,
                        AppColor.whiteColor,
                        AppColor.greenColor,
                        25,
                      ),
                    ],
                  ),
                )) , 

                //! 9 Buyers 
                
          ],
        ),
      ),
    );
  }
}
