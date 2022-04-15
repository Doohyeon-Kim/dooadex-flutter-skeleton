import 'package:dooadex_flutter_skeleton/configs/palette.dart';
import 'package:dooadex_flutter_skeleton/presentation/view_models/home_view_model.dart';
import 'package:dooadex_flutter_skeleton/screens/service_samples_screen.dart';
import 'package:dooadex_flutter_skeleton/screens/uxui_samples_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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
    Container(),
    const UxUiSamplesScreen(),
    const ServiceSamplesScreen(),
  ];

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationViewModel>(
      create: (context) => BottomNavigationViewModel(),
      child: Consumer<BottomNavigationViewModel>(builder: (context, bottomNaviagationViewModel, child) {
        return Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(bottomNaviagationViewModel.selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: context.watch<BottomNavigationViewModel>().selectedIndex,
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
