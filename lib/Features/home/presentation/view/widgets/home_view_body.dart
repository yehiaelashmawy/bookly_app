import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
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
            style: Style.titleMeduim,
          ),
          BestSellarListViewItems(),
        ],
      ),
    );
  }
}

class BestSellarListViewItems extends StatelessWidget {
  const BestSellarListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://m.media-amazon.com/images/I/81q77Q39nEL._UF1000,1000_QL80_.jpg',
                  ),
                ),
              ),
            ),
          ),
          const Column(),
        ],
      ),
    );
  }
}
