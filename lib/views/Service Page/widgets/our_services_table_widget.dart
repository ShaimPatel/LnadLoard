import 'package:flutter/material.dart';

import '../../../res/assets/image_assets.dart';
import '../../../res/colors/app_color.dart';

class OurServiceTableWidget extends StatelessWidget {
  const OurServiceTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
