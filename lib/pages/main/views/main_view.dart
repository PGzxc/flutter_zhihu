import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../i18n/i18n_keys.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/custom_main_page.dart';
import '../controllers/main_controller.dart';
import 'main_custom_view.dart';
import 'main_drawer.dart';
import 'main_screen_view.dart';

/// 日期：2023-02-14
/// 描述：主页
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: MainCustomView()
        //CustomMainPage()
        //MainScreen()
    );
    // return Obx(() => Scaffold(
    //     //drawer: const MainDrawer(),
    //     body: const MainScreen()));
  }
}
