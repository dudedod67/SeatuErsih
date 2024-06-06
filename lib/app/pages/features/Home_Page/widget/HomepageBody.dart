import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seatu_ersih/app/pages/features/Home_Page/widget/bannerstatus.dart';
import 'package:seatu_ersih/app/pages/features/Home_Page/widget/ifempty.dart';
import 'package:seatu_ersih/app/pages/features/Home_Page/widget/homepage_orders.dart';
import 'package:seatu_ersih/app/pages/features/profile_page/profileController.dart';
import 'package:seatu_ersih/app/router/app_pages.dart';
import 'package:seatu_ersih/themes/colors.dart';
import 'package:seatu_ersih/themes/fonts.dart';
import 'package:seatu_ersih/app/pages/features/Home_Page/widget/orderservice.dart';
import 'package:seatu_ersih/app/pages/features/Home_Page/widget/bannerslogan.dart';

class HomeBody extends GetView<ProfileController> {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome,',
                    style: Fonts.slogan,
                  ),
                  Obx(
                    () => Text(
                      controller.username.value,
                      style: Fonts.slogan,
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.CHOOSE_SERVICE);
                },
                child: OrderService(),
              ),
            ))
          ]),
          SizedBox(
            height: 31,
          ),
          Center(
            child: BannerSlogan(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'My Orders',
              style: Fonts.header1.copyWith(color: Colors.black),
            ),
          ),
          Center(child: ImgIfEmpty()),
        ],
      ),
    );
  }
}
