import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:shimmer/shimmer.dart';

import '../../res/colors/app_color.dart';
import '../../res/components/constrians.dart';

class ShimmerWidget extends StatefulWidget {
  double widthSized;
  Axis scrollDirection;
   ShimmerWidget({Key? key , required this.widthSized , required this.scrollDirection}) : super(key: key);

  @override
  State<ShimmerWidget> createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget> {

  static const _shimmerGradient = LinearGradient(
    colors: [
      Color(0xFF00796B),
      Color(0xFF00695C),
      Color(0xFFF4F4F4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: widget.scrollDirection!,
          itemCount: 3,
          itemBuilder: (ctx, index) {
            return Padding(
              padding:widget.scrollDirection == Axis.horizontal?
              const EdgeInsets.symmetric(horizontal: 3) :   const EdgeInsets.symmetric(vertical: 5),
              child: Shimmer(
                gradient: _shimmerGradient,
                child : Padding(
                  padding:widget.scrollDirection == Axis.horizontal? EdgeInsets.zero : const EdgeInsets.all(8.0),
                  child: Container(
                    width:widget.widthSized,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppColor.greyColor,
                        )),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 180,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft:
                                      Radius.circular(20),
                                      topRight:
                                      Radius.circular(20))),
                              child: const ClipRRect(
                                borderRadius:
                                 BorderRadius.only(
                                    topLeft:
                                    Radius.circular(15),
                                    topRight:
                                    Radius.circular(15)),
                                child: Image(
                                  image: AssetImage(ImageAssets.contact),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        //!
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 30,
                                  width:widget.scrollDirection == Axis.horizontal? 75 : 170,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius:
                                    BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                            elevatedButton(
                              "".toUpperCase(),
                                  () => null,
                              80.0,
                              12,
                              AppColor.whiteColor,
                              AppColor.greyColor,
                              25,
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10 , right: 10),
                          child: Container(
                            height: 10,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius:
                              BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10 , right: 10),
                          child: Container(
                            height: 20,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius:
                              BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        //! Three

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10 , right: 10),
                                  child: Container(
                                    height: 20,
                                    width:widget.scrollDirection == Axis.horizontal?50:100,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10 , right: 10),
                                  child: Container(
                                    height: 20,
                                    width: widget.scrollDirection == Axis.horizontal?50:100,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    ),
                                  ),
                                ),Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10 , right: 10),
                                  child: Container(
                                    height: 20,
                                    width: widget.scrollDirection == Axis.horizontal?50:100,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        //!
                        Center(
                          child: elevatedButton(
                            "",
                                () => null,
                            130.0,
                            15,
                            AppColor.whiteColor,
                            AppColor.greenColor,
                            25,
                          ),
                        ),
                        if(widget.scrollDirection == Axis.vertical)
                          SizedBox(height: 10),
                      ],
                    ),
                    //!
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
