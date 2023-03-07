import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/detail_surah_model.dart';
import '../models/surah.dart';

class AllController extends GetxController {
  //create function for get all surah
  Future<List<Surah>> getAllSurah() async {
    Uri url = Uri.parse("https://api.quran.gading.dev/surah/");
    var response = await http.get(url);

    List? data = (json.decode(response.body) as Map<String, dynamic>)["data"];

    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => Surah.fromJson(e)).toList();
    }
  }

  Future<DetailSurahModel> getDetailSurah(String id) async {
    Uri url = Uri.parse("https://api.quran.gading.dev/surah/$id");
    var res = await http.get(url);
    Map<String, dynamic> data = (json.decode(res.body) as Map<String, dynamic>);
    return DetailSurahModel.fromJson(data);
  }

  // Future<DetailSurahResponse> getDetailSurah(String id) async {
  //   // Uri url = Uri.parse("https://api.quran.gading.dev/surah/$id");
  //   // var res = await http.get(url);

  //   var dio = Dio();
  //   final response = await dio.get("https://api.quran.gading.dev/surah/$id");
  //   //print(jsonDecode(res.body)['data']['verses'][0]['text']['arab']); //success
  //   DetailSurahResponse res = DetailSurahResponse.fromJson(response.data);
  //   print("===res===");
  //   print(res.data);

  //   return res;
  // }
}
