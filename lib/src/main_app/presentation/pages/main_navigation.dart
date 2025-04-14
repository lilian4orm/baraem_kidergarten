import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/cubit/navigation_cubit.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/home/home_page.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/pages/student_profile_page.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/rate/rate_page_view.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

class MainNavigationPage extends StatelessWidget {
  const MainNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.index,
            children: const [
              HomePage(),
              RatePageView(),
              HomePage(),
              StudentProfile(),
              // Add other pages here
            ],
          ),
          bottomNavigationBar: NavigationBar(
            elevation: 2,
            height: 70,
            backgroundColor:
                Theme.of(context).colorScheme.surfaceContainerHighest,
            indicatorColor: Theme.of(context).colorScheme.primaryContainer,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            onDestinationSelected: (int index) {
              context.read<NavigationCubit>().changeIndex(index);
            },
            selectedIndex: state.index,
            destinations: <Widget>[
              NavigationDestination(
                icon: const Badge(child: Icon(FeatherIcons.home)),
                selectedIcon: const Badge(child: Icon(FeatherIcons.home)),
                label: 'Home'.tr(),
              ),
              // NavigationDestination(
              //   icon: const Icon(Icons.search_outlined),

              //   selectedIcon: const Icon(Icons.search),
              //   label: 'Rate'.tr(),
              // ),
              NavigationDestination(
                icon: const Icon(Icons.star_rate_outlined),

                selectedIcon: const Icon(Icons.star_rate),
                label: 'Rate'.tr(),
              ),
              NavigationDestination(
                icon: const Icon(LucideIcons.barChart2),

                selectedIcon: const Icon(LucideIcons.barChart2),
                label: 'Examination'.tr(),
              ),
              NavigationDestination(
                icon: const Icon(LucideIcons.user),

                selectedIcon: const Icon(LucideIcons.user),
                label: 'Profile'.tr(),
              ),
            ],
          ),
        );
      },
    );
  }
}
