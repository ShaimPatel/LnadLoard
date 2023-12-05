import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:landloard/global/Widgets/divider_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';

class LandLoardPage extends StatefulWidget {
  const LandLoardPage({super.key});

  @override
  State<LandLoardPage> createState() => _LandLoardPageState();
}

class _LandLoardPageState extends State<LandLoardPage> {
  //!
  final ScrollController scrollController = ScrollController();
  bool _isVisible = false;
  bool? is_Expanded = false;

  final List<Map<String, String>> panels = [
    {
      'heading':
          'Nationwide ‘Additional’ Private Rented Property License, effective 01/10/2018',
      'content': '''
            <p><span style="font-weight: 400;">You are already aware of the compulsory conditions of the Selective License under the PRPL Scheme; you will also be aware of the effect on non-compliance, where the local authority is in a position to serve fines for breach, resulting in potential a fine of &pound;20,000.00 for each property.</span></p>
            
            <p><span style="font-weight: 400;">To ensure compliance for each and every relevant Property, there has been a substantial increase in continuous administration required to update the relevant authorities of your compliance.</span></p>
            
            <p><span style="font-weight: 400;">You should be aware of the importance of having a valid License under the PRPL Scheme, and that the failure to do so, where necessary, will result in voided s.21/ 6a Notices (further details under point3).</span></p>
            
            <p><span style="font-weight: 400;">There has been additional onus on all managing agents since the introduction of the PRPL Scheme where we, as the rent receiver, are now also obligated to meet the requirements of the Scheme conditions and we have had to increase our insurance premium to cover any potential claim against us for a Landlord's failure to comply with the conditions.</span></p>
            <p><span style="font-weight: 400;">You should be aware of the importance of having a valid License under the PRPL Scheme, and that the failure to do so, where necessary, will result in voided s.21/ 6a Notices (further details under point3).</span></p>
            
            <p><span style="font-weight: 400;">There has been additional onus on all managing agents since the introduction of the PRPL Scheme where we, as the rent receiver, are now also obligated to meet the requirements of the Scheme conditions and we have had to increase our insurance premium to cover any potential claim against us for a Landlord's failure to comply with the conditions.</span></p><p><span style="font-weight: 400;">You should be aware of the importance of having a valid License under the PRPL Scheme, and that the failure to do so, where necessary, will result in voided s.21/ 6a Notices (further details under point3).</span></p>
            
            <p><span style="font-weight: 400;">There has been additional onus on all managing agents since the introduction of the PRPL Scheme where we, as the rent receiver, are now also obligated to meet the requirements of the Scheme conditions and we have had to increase our insurance premium to cover any potential claim against us for a Landlord's failure to comply with the conditions.</span></p>
      '''
    },
    // You can add more panels here if needed
  ];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = true;
        });
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  void scrollToTop() {
    scrollController.animateTo(0.0,
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
                onPressed: scrollToTop,
                child: const Icon(Icons.arrow_upward),
              )
            : null,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Landlord",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColor.greenColor),
              ),
            ),
            CustomeDividerWidget(
              color: AppColor.greenColor,
            ),
            Expanded(
              child: SizedBox(
                // height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.whiteColor,
                              border: Border.all(color: AppColor.greyColor)),
                          child: Row(
                            children: [
                              Container(
                                  height: is_Expanded!
                                      ? MediaQuery.of(context).size.height *
                                          0.75
                                      : MediaQuery.of(context).size.height *
                                          0.1,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: AppColor.greenColor,
                                  )),
                              Expanded(
                                child: ExpansionPanelList.radio(
                                  expansionCallback:
                                      (int index, bool isExpanded) {
                                    setState(() {
                                      is_Expanded = !isExpanded;
                                    });
                                  },
                                  elevation: 0,
                                  animationDuration: kThemeAnimationDuration,
                                  dividerColor: AppColor.greenColor,
                                  children: panels.map<ExpansionPanelRadio>(
                                      (Map<String, String> panel) {
                                    return ExpansionPanelRadio(
                                      headerBuilder: (BuildContext context,
                                          bool isExpanded) {
                                        return Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            panel['heading']!,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        );
                                      },
                                      body: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SingleChildScrollView(
                                          child: Html(
                                            data: panel['content'],
                                          ),
                                        ),
                                      ),
                                      value: "steps.value",
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';

// import '../../global/AppBar/drawer_widget.dart';
// import '../../res/assets/image_assets.dart';

// class LandLoardPage extends StatelessWidget {
//   // Data for ExpansionPanelList
//   

//   LandLoardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Image(
//           image: AssetImage(
//             ImageAssets.smartlink,
//           ),
//           height: 160,
//           width: 160,
//         ),
//       ),
//       endDrawer: const CustomDrawerWidget(),
//       body: SingleChildScrollView(
//         child: ExpansionPanelList.radio(
//           expansionCallback: (int index, bool isExpanded) {
//             // Handles the expansion of panels
//             // Implement logic if needed on panel expansion
//           },
//           children: panels.map<ExpansionPanel>((Map<String, String> panel) {
//             return ExpansionPanel(
//               headerBuilder: (BuildContext context, bool isExpanded) {
//                 return Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Text(
//                     panel['heading']!,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16.0,
//                     ),
//                   ),
//                 );
//               },
//               body: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SingleChildScrollView(
//                   child: Html(
//                     data: panel['content'],
//                   ),
//                 ),
//               ),
//               // isExpanded:
//               //     true, // Change to true to have all panels initially expanded
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
