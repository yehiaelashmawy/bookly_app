import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomerAppBar(),
        CustomListViewItems(),
      ],
    );
  }
}
