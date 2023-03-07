import 'package:Quran.me/models/detail_surah_model.dart' as detail;
import 'package:Quran.me/models/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/all_controller.dart';

class DetailSurahScreen extends StatelessWidget {
  var controller = Get.put<AllController>(AllController());
  // DetailSurahScreen(this.surah);
  // Surah? surah = Surah();
  // DetailSurahModel? ds = DetailSurahModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text("${surah!.name!.transliteration!.id}"),
            ));
  }
}
