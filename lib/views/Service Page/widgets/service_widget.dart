import 'package:flutter/material.dart';

import '../../HomePage/widgets/our_services.dart';

class ServicesWidgets extends StatelessWidget {
  const ServicesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.72,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
    );
  }
}
