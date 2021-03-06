import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:provider/provider.dart';
// my imports
import '../../data/data.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../app.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  static const routeName = '/home';
  HomePage({Key key, this.scaffoldKey}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final FetchData _fetchData = FetchData();
  TabController _controller;
  List<ProductType> categoryList = MockData.productCategoryList;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(
      length: categoryList.length,
      vsync: this,
    );
  }
  @override
  Widget build(BuildContext context) {
    // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    bloc.setTotalQty;
    return Scaffold(
      endDrawer: DrawerWidget(),
      backgroundColor: Colors.indigo[50],
      body: SafeArea(
        child: FutureBuilder(
          future: _fetchData.getProducts(),
          builder: (BuildContext context,
              AsyncSnapshot<List<Product>> snapshot) {
            if (snapshot.hasData) {
              List<Product> products = snapshot.data;
              return SingleChildScrollView(
                child: _buildBody(context, products, bloc),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context,List<Product> productList, AppProvider bloc) {
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
      tabs: categoryList.map((ProductType choice) {
        return Tab(
          text: choice.name,
          icon: choice.assetPath,
        );
      }).toList(),
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: _tabBar.preferredSize.height + 70),
            child: TabBarView(
              controller: _controller,
              children: categoryList.map((ProductType choice) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: ItemListProducts(products: productList),
                  ),
                );
              }).toList(),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _costumAppBar(bloc),
              _tabBar,
            ],
          ),
        ],
      ),
    );
  }
  Widget _costumAppBar(var bloc) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.deepOrange),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/checkOut', arguments: 5);
                    },
                  ),
                  Positioned(
                    top: 3,
                    right: 4,
                    child: Container(
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orange[400],
                        ),
                        child: Center(
                          child: Text(bloc.getCartCount()>9?"10+": bloc.getCartCount().toString(),
                              style: TextStyle(
                                fontSize: 10,
                                  fontFamily: 'Tajawal-Regular',
                                  color: Colors.white70)),
                        )),
                  ),
                ],
              ),
              Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                const Text('اورنج فروت',
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular',
                        color: Colors.deepOrange)),
                IconButton(
                  icon:
                      Icon(Icons.format_align_right, color: Colors.deepOrange),
                  onPressed: () {
                    widget.scaffoldKey.currentState.openEndDrawer();
                  },
                ),
              ])
            ]),
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 35,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[400], width: 2),
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(7),
          ),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
              hintText: "Search....",
              prefixIcon: Icon(Icons.search, color: Colors.grey[300]),
              border: InputBorder.none,
            ),
            cursorColor: Colors.grey[300],
            style: TextStyle(
                fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
          ),
        ),
      ],
    );
  }
}
