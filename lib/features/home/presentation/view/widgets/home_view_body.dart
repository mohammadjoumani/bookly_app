import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FeaturedBooksListView(),
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
                        child: Text("Best Seller", style: Styles.textStyle18),
                      ),
                      SizedBox(height: 20),
                    ],
              )
              ),
              SliverToBoxAdapter(
                child: BestSellerListView(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
