// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'image_sliding.dart';
import 'text_sliding.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> sideAnimation;
  late Animation<Offset> imageAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();

    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageSliding(imageAnimation: imageAnimation),
          TextSliding(
            animation: sideAnimation,
            text: 'Novel Nest',
            fontSize: 45,
          ),
          TextSliding(animation: slidingAnimation, text: 'Read Free Books'),
        ],
      ),
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);

    sideAnimation = Tween<Offset>(begin: const Offset(3, 0), end: Offset.zero)
        .animate(animationController);

    imageAnimation = Tween<Offset>(begin: const Offset(0, -5), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.zoom,
      //   duration: Duration(milliseconds: 1000),
      // );
      GoRouter.of(context).push('/homeView');
    });
  }
}
