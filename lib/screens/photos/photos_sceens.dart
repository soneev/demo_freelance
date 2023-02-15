

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:freelance_project_ui/const/colors.dart';
import 'package:get/get.dart';

import 'gridlist.dart';
import 'photos_controller.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridView.custom(
                physics:const  NeverScrollableScrollPhysics(),
                gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 4,
              repeatPattern: QuiltedGridRepeatPattern.same,
              pattern: [
                for (int i = 0; i <  GrideList().grideList.length; i++)
                  (i == 0) ? const QuiltedGridTile(2, 2) : const QuiltedGridTile(1, 1),
              ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset( GrideList().grideList[index],fit: BoxFit.cover,),
              ),
                ),
              ),
            );
          }),
       
    );
  }
}