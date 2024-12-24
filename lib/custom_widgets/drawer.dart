import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing/app/routes/app_pages.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.8),
                  Colors.teal.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: EdgeInsets.only(top: 50.h, bottom: 20.h, left: 20.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35.r,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                SizedBox(width: 25.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "User@gmail.com",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerItem(
                    icon: Icons.home,
                    label: "Home",
                    onTap: () => Get.back(),
                  ),
                  DrawerItem(
                    icon: Icons.explore,
                    label: "Explore",
                    onTap: () => Get.back(),
                  ),
                  DrawerItem(
                    icon: Icons.event,
                    label: "My Events",
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                  DrawerItem(
                    icon: Icons.task,
                    label: "Tasks",
                    onTap: () => Get.back(),
                  ),
                  DrawerItem(
                    icon: Icons.group,
                    label: "Invite Friends",
                    onTap: () => Get.back(),
                  ),
                  DrawerItem(
                    icon: Icons.settings,
                    label: "Settings",
                    onTap: () => Get.back(),
                  ),
                  DrawerItem(
                    icon: Icons.info,
                    label: "About",
                    onTap: () {
                      Get.back();
                    },
                  ),
                ],
              ).paddingSymmetric(vertical: 30.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: InkWell(
              onTap: () => Get.offAllNamed('/login'),
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.red, size: 24.sp),
                  SizedBox(width: 10.w),
                  Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal, size: 24.sp),
      title: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
        ),
      ),
      onTap: onTap,
    );
  }
}
