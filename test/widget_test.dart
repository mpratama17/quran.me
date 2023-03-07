import 'dart:convert';
import 'package:Quran.me/models/detail_surah_model.dart';
import 'package:Quran.me/models/surah.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
//import http

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah");
  var res = await http.get(url);
  print(res.body);

  // Future<DetailSurahModel> getDetailSurah(String id) async {
  //   Uri url = Uri.parse("https://api.quran.gading.dev/surah/$id");
  //   var res = await http.get(url);
  //   Map<String, dynamic> data = (json.decode(res.body) as Map<String, dynamic>);
  //   print(data.toString());
  //   return DetailSurahModel.fromJson(data);
  // }
  // Future<DetailSurahModel> getDetailSurah(String id) async {
  //   Uri url = Uri.parse("https://api.quran.gading.dev/surah/$id");
  //   var res = await http.get(url);
  //   Map<String, dynamic> data =
  //       (json.decode(res.body) as Map<String, dynamic>)["data"];
  //   DetailSurahModel tes = DetailSurahModel.fromJson(data);
  //   print("//////");
  //   print(res.body);
  //   return DetailSurahModel.fromJson(data);
  // }

  // await getDetailSurah(1.toString());

  // Uri url = Uri.parse("https://api.quran.gading.dev/surah/1");
  // var res = await http.get(url);
  // print(res.body);

  // var dio = Dio();
  // final response = await dio.get("https://api.quran.gading.dev/surah/1");
  // print(response.data);
}
