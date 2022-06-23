import 'package:dooadex_flutter_skeleton/presentation/view_models/bottom_navigation_index_view_model.dart';
import 'package:dooadex_flutter_skeleton/screens/dooadex_screens.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return const [
      BottomNavigationBarItem(
          icon: Icon(Icons.input),
          label: 'Components',
          backgroundColor: DooadexColor.primary),
      BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: 'Services',
          backgroundColor: DooadexColor.primary),
      BottomNavigationBarItem(
          icon: Icon(Icons.aod),
          label: 'Features',
          backgroundColor: DooadexColor.primary),
    ];
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const ComponentSamplesScreen(),
    const ServiceSamplesScreen(),
    const FeatureSamplesScreen(),
  ];

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationIndexViewModel>(
      create: (context) => BottomNavigationIndexViewModel(),
      child: Consumer<BottomNavigationIndexViewModel>(
          builder: (context, bottomNavigationViewModel, child) {
        return Scaffold(
          body: Center(
            child: _widgetOptions
                .elementAt(bottomNavigationViewModel.selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex:
                context.watch<BottomNavigationIndexViewModel>().selectedIndex,
            items: buildBottomNavBarItems(),
            onTap: (index) {
              bottomNavigationViewModel.onItemTapped(index: index);
            },
          ),
        );
      }),
    );
  }
}
