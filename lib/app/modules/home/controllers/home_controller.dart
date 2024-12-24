import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final List<Map<String, dynamic>> features = [
    {'icon': Icons.power_off, 'label': 'Ignition OFF', 'color': Colors.red},
    {'icon': Icons.power, 'label': 'Power Connected', 'color': Colors.green},
    {'icon': Icons.local_parking, 'label': 'Parking OFF', 'color': Colors.red},
    {'icon': Icons.signal_cellular_alt, 'label': 'GSM Strong', 'color': Colors.green},
    {'icon': Icons.gps_fixed, 'label': 'GPS Fixed', 'color': Colors.green},
    {'icon': Icons.lock_open, 'label': 'Mobile Unlock', 'color': Colors.green},
    {'icon': Icons.local_parking, 'label': 'Parking OFF', 'color': Colors.red},
    {'icon': Icons.signal_cellular_alt, 'label': 'GSM Strong', 'color': Colors.green},
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
