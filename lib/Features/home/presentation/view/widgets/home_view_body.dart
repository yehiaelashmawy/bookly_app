import 'package:bookly/Features/home/presentation/view/widgets/best_sellar_list_view_item.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomerAppBar(),
          FeaturedBoxListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Sellar",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellarListViewItems(),
        ],
      ),
    );
  }
}
