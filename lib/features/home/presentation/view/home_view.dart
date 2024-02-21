import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/home_view_body.dart';

import '../../../../core/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Novel Nest', style: Styles.textStyle30),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  onPressed: () {},
                  iconSize: 24,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
