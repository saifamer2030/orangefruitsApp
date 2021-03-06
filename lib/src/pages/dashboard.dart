import 'package:flutter/material.dart';
// my imports 
import '../models/models.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

// ignore: must_be_immutable
class DashboardPage extends StatefulWidget {
  dynamic currentTab;
  RouteArgument routeArgument;
  Widget currentPage = HomePage();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  DashboardPage({
    Key key,
    this.currentTab,
  }) {
    if (currentTab != null) {
      if (currentTab is RouteArgument) {
        routeArgument = currentTab;
        currentTab = int.parse(currentTab.id);
      }
    } else {
      currentTab = 2;
    }
  }

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: widget.scaffoldKey,
        endDrawer: DrawerWidget(),
//        endDrawer: FilterWidget(onFilter: (filter) {
//          Navigator.of(context)
//              .pushReplacementNamed('/dashboard', arguments: widget.currentTab);
//        }),
        body: widget.currentPage,
      ),
    );
  }
}
