import 'package:dooadex_flutter_skeleton/presentation/views/home/home_view.dart';
import 'package:dooadex_flutter_skeleton/services/native_api/location.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocationService.requestLocationPermission();
    return const Scaffold(
      body: HomeView(),
    );
  }
}
