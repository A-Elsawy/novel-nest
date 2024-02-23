import 'package:flutter/material.dart';
import 'package:novel_nest/core/utils/styles.dart';
import 'widgets/custom_search_app_bar.dart';
import 'widgets/search_list.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size,
        child: const CustomSearchAppBar(),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Search Results',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SearchListView(),
        ],
      ),
    );
  }
}
