import 'package:Quran.me/view/detailsurah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controllers/all_controller.dart';
import '../models/surah.dart';

class HomeScreen extends StatelessWidget {
  var controller = Get.put<AllController>(AllController());

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 24),
    //     child: FutureBuilder(
    //       future: controller.getAllSurah(),
    //       builder: (context, AsyncSnapshot snapshot) {
    //         if (snapshot.connectionState == ConnectionState.waiting) {
    //           return Center(
    //             child: CircularProgressIndicator(),
    //           );
    //         }
    //         if (!snapshot.hasData) {
    //           return Text("data not found");
    //         }

    //         return ListView.builder(
    //             itemCount: snapshot.data!.length,
    //             itemBuilder: (context, index) {
    //               Surah surah = snapshot.data![index];
    //               return ListTile(
    //                 onTap: () {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                         builder: (context) => DetailSurahScreen()),
    //                   );
    //                 },
    //                 title: Text("${surah.name!.transliteration!.id}"),
    //                 subtitle: Text(
    //                     "${surah.numberOfVerses} Surat dari ${surah.revelation!.id}"),
    //                 leading: CircleAvatar(child: Text("${surah.number}")),
    //                 trailing: Text("${surah.name!.short}"),
    //               );
    //             });
    //       },
    //     ),
    //   ),
    // );
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: FutureBuilder<List<Surah>>(
            future: controller.getAllSurah(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData) {
                return Center(
                  child: Text("No Data"),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Surah surah = snapshot.data![index];
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailSurahScreen()),
                      );
                    },
                    leading: CircleAvatar(
                      child: Text("${surah.number}"),
                    ),
                    title: Text("${surah.name?.transliteration?.id}"),
                    subtitle: Text(
                        "${surah.numberOfVerses} Ayat | ${surah.revelation?.id ?? 'Error'}"),
                    trailing: Text("${surah.name?.short}"),
                  );
                },
              );
            }));
  }
}
