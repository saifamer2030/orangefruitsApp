import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:provider/provider.dart';
// my imports
import '../../data/data.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

class OrdersPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const OrdersPage({Key key, this.scaffoldKey}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  List<String> _ordersOption = [
    "الطلبات الحالية",
    "الطلبات المنتهية",
  ];
  @override
  void initState() {
    super.initState();
    _controller = new TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    TabBar _tabBar = TabBar(
        controller: _controller,
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.deepOrange,
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        indicator: MD2Indicator(
            indicatorHeight: 3,
            indicatorColor: Colors.deepOrange,
            indicatorSize: MD2IndicatorSize.normal),
        tabs: <Tab>[
          Tab(
            text: "الطلبات الحالية",
          ),
          Tab(
            text: "الطلبات المنتهيه",
          ),
        ]);
    return Scaffold(
          key: widget.scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            title: Text("الطلبات"),
            centerTitle: true,
            bottom: _tabBar,
          ),
          body: Container(
            margin: EdgeInsets.only(top: 5),
            child: TabBarView(
              controller: _controller,
              children: _ordersOption.map((String choice) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: bloc.getCartCount() == 0
                     ? Center(
                          child: Text("سلة المشتروات فارغة"),
                       )
                             : _buildBody(bloc),
                );
              }).toList(),
            ),
          ),
        );
  }

  _buildBody(AppProvider bloc) {
    return Container(
      child: ListView.builder(
          itemCount: bloc.carts.length,
          itemBuilder: (BuildContext context, i) {
            return ItemOrdersWidget(index: i);
          }),
    );
  }
}
