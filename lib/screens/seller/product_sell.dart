import 'package:flutter/material.dart';
import 'package:freelance_project_ui/screens/seller/seller_controller.dart';
import 'package:get/get.dart';

import '../../data/data.dart';
import '../../widgets/circle_button.dart';
class ProductSell extends StatelessWidget {
  const ProductSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SellerController>(
        init: SellerController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              // appBar: const PreferredSize(
              //   preferredSize: const Size.fromHeight(100.0),
              //   child: Header(),
              // ),
              body: GridView.builder(physics:const  NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 3,
                          childAspectRatio: 0.75),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: ProductItems().productItem.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10),
                        child: buildProductList(index, context),
                      )),
            ),
          );
        });
  }

  Widget buildProductList(
    int index,
    BuildContext context,
  ) {
    final SellerController controller = Get.find();
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.7,
                offset: Offset(0.0, 0.3)),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      ProductItems().productItem[index].productimage.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Obx(
                    () => Align(
                        alignment: Alignment.topRight,
                        child: CircleButtom(
                          iconName: Icons.favorite,
                          isSelected: controller.fev,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            ProductItems()
                                .productItem[index]
                                .productname
                                .toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(),
                            textAlign: TextAlign.left,
                            textScaleFactor: 1,
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                              ProductItems()
                                  .productItem[index]
                                  .productsub
                                  .toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(overflow: TextOverflow.ellipsis)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red.shade200,
                          borderRadius: BorderRadius.circular(2)),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            ProductItems().productItem[index].price.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
