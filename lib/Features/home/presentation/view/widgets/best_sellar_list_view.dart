import 'package:bookly/Features/home/presentation/view/widgets/best_sellar_list_view_item.dart';
import 'package:flutter/material.dart';

class BEstSellarListView extends StatelessWidget {
  const BEstSellarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellarListViewItems(),
        );
      },
    );
  }
}
