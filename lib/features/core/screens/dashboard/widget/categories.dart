import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/atg_business_logic.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_details.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_details.dart';

import '../../../models/dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  final ATGBusinessLogic atgLogic;

  const DashboardCategories({
    required this.atgLogic,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = CategoriesModel.list;
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // Check if the category is 'ATG'
            if (list[index].title == 'ATG') {
              // Navigate to the ATGDetailsPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ATGDetailsPage(
                    atgLogic: atgLogic,
                  ),
                ),
              );
            } else if (list[index].title == 'FM') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FlowmeterDetailsPage(),
                ),
              );
            }
          },
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
