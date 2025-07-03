import 'package:bookly/Features/home/presentation/view/widgets/best_sellar_list_view.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomerAppBar(),
              FeaturedBoxListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BEstSellarListView(),
          ),
        ),
      ],
    );
  }
}
