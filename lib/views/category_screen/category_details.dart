// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_ui/consts/colors.dart';
import 'package:ecommerce_ui/views/category_screen/item_detail.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/widget_common/bgwidget.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';
import '../../consts/styles.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "baby Clothing"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .size(120, 60)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
              20.heightBox,
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make()
                      ],
                    )
                        .box
                        .white
                        .margin(
                          EdgeInsets.symmetric(horizontal: 5),
                        )
                        .roundedSM
                        .outerShadowSm
                        .padding(EdgeInsets.all(12))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(
                            title: "Dummy Items",
                          ));
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
