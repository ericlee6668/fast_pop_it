import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/base_bview.dart';
import '../../../base/base_view.dart';

class UsPage extends StatelessWidget {
  const UsPage({super.key});
  WebviewGetxLogic get logic => Get.find<WebviewGetxLogic>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const InfoViewContainer(url: 'https://hay-168.com/'),
    );
  }
}
