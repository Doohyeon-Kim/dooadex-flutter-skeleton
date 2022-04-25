import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/bottom_navigation_index_view_model.dart';
import 'package:dooadex_flutter_skeleton/screens/service_samples/service_samples_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../screens/io_samples_screens/io_samples_screen.dart';
import '../../../screens/uxui_samples/uxui_samples_screen.dart';


class HomeView extends StatelessWidget {
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: const Icon(Icons.input),
          label: 'I/O',
          backgroundColor: DooadexColor.blue),
      BottomNavigationBarItem(
          icon: const Icon(Icons.aod),
          label: 'UX/UI',
          backgroundColor: DooadexColor.green),
      BottomNavigationBarItem(
          icon: const Icon(Icons.apps),
          label: 'Services',
          backgroundColor: DooadexColor.red),
    ];
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const IoSamplesScreen(),
    const UxUiSamplesScreen(),
    const ServiceSamplesScreen(),
  ];

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationIndexViewModel>(
      create: (context) => BottomNavigationIndexViewModel(),
      child: Consumer<BottomNavigationIndexViewModel>(builder: (context, bottomNaviagationViewModel, child) {
        return Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(bottomNaviagationViewModel.selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: context.watch<BottomNavigationIndexViewModel>().selectedIndex,
            items: buildBottomNavBarItems(),
            onTap: (index) {
              bottomNaviagationViewModel.onItemTapped(index: index);
            },
          ),
        );
      }),
    );
  }
}
