import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [theme.colorScheme.primaryFixedDim, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.3, 1],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(toolbarHeight: 20, backgroundColor: Colors.transparent),
        body: Column(
          children: [
            Container(
              height: query.width * 0.4,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colorScheme.primaryContainer,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/logo.png",
                    width: query.width * 0.3,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      const Spacer(),
                      Text(appName, style: theme.textTheme.titleLarge),
                      const Text("محمد علي"),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text("الشعبة : A"),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(LucideIcons.bell),
                  ),
                ],
              ),
            ),

            const Spacer(flex: 1),
            AnimationLimiter(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: const BouncingScrollPhysics(),
                childAspectRatio: 0.9,
                padding: const EdgeInsets.only(top: 15, right: 24, left: 24),
                mainAxisSpacing: 24.0,
                crossAxisSpacing: 10.0,
                children: [
                  _gridContainer("غفوة", "assets/icons/sleep.png"),
                  _gridContainer(
                    "العناية بالطفل",
                    "assets/icons/kinder/hfad.png",
                  ),
                  _gridContainer("الحضور", "assets/icons/kinder/plus.png"),
                  _gridContainer("غذاء", "assets/icons/kinder/egg.png"),
                  _gridContainer("تدريب", "assets/icons/kinder/paper.png"),
                  _gridContainer("يومي", "assets/icons/kinder/book.png"),
                  _gridContainer("المحادثة", "assets/icons/kinder/bog.png"),
                  _gridContainer('ملابس', "assets/icons/kinder/clothes.png"),
                  _gridContainer("اشعارات", "assets/icons/kinder/rangle.png"),
                ],
              ),
            ),

            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  int index = 0;
  _gridContainer(t, img) {
    return AnimationConfiguration.staggeredGrid(
      position: index++,
      duration: const Duration(milliseconds: 375),
      columnCount: 9,
      child: SlideAnimation(
        verticalOffset: 56.0,
        child: ScaleAnimation(
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.white),

                        child: Image.asset(img),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(t, maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
