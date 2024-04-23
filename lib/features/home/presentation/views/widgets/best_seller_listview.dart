import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:  const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder:  (context,index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BestSellerListViewItem(),
      ),
      itemCount: 10,
    );
  }
}