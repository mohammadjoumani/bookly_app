import 'package:bookly/core/util/app_router.dart';
import 'package:bookly/core/util/assets.dart';
import 'package:bookly/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.Logo),
        const SizedBox(height: 4),
        SlidingText(slidingAnimation: slidAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        // Get.to(() => const HomeView(),
        //     // calculations
        //     transition: Transition.fade,
        //     duration: kTranstionDuration);

        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }


}