import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:shimmer/shimmer.dart';
// my imports
import '../../data/data.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class ShimmerEffectPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  static const routeName = '/shimmerEffect';
  ShimmerEffectPage({Key key, this.scaffoldKey}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ShimmerEffectPage>
    with SingleTickerProviderStateMixin {
      List<ProductType> categoryList = MockData.productCategoryList;
      bool _enabled = true;
      TabController _controller;
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
   
    return Scaffold(
      endDrawer: DrawerWidget(),
      backgroundColor: Colors.indigo[50],
      body:  CustomScrollView(
          slivers: <Widget>[
            _silverAppBar(),
            _silverListBody(),
          ],
        ),
    );
  }
  Widget _silverAppBar(){
    return SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 260.0,
              pinned: false,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.all(0.0),
                title: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                    right: 0,
                      left: 0,
                      child: TabBar(
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
    ),
                    ),
                    Positioned(
                      bottom: 75,
                      right: 30,
                      left: 30,
                      child:  Container(
          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
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
                    ),
                  
                    ],
                ),
              ),
              leading: Stack(
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
                          color: Colors.orange[400],
                        ),
                        child: Center(
                          child: Text(
                            "",
                              style: TextStyle(
                                fontSize: 10,
                                  fontFamily: 'Tajawal-Regular',
                                  color: Colors.white70)),
                        )),
                  ),
                ],
              ),
              actions: <Widget>[
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
              ],
            );
  }
  Widget _silverListBody(){
    return SliverToBoxAdapter(
              child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: MediaQuery.of(context).size.height+55,
                       child: TabBarView(
                        controller: _controller,
                        children: categoryList.map((ProductType choice) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Shimmer.fromColors(
                               baseColor: Colors.grey[300],
                               highlightColor: Colors.grey[100],
                               enabled: _enabled,
                               child: ListView.builder(
                                 itemCount: 10,
                                 itemBuilder: (BuildContext context, i) {
                                   return Container(
                                     height: 150,
                                     child:   Stack(
                                       children: <Widget>[
                                         Positioned(
                                           top: 15,
                                           right: 0,
                                           left: 0,
                                           child: GestureDetector(
                                             onTap: () {},
                                             child: Container(
                                               height: 143,
                                               child: Card(
                                                 elevation: 4,
                                                 child: ListTile(
                                                   title: Padding(
                                                     padding: const EdgeInsets.all(10.0),
                                                     child: Text( 
                                                       "",
                                                       textAlign: TextAlign.center,
                                                       ),
                                                     ),
                                                   subtitle: Column(
                                                     mainAxisAlignment: MainAxisAlignment.center,
                                                     mainAxisSize: MainAxisSize.min,
                                                     children: <Widget>[
                                                       Row(
                                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         children: <Widget>[
                                                           Text(
                                                             "",
                                                             style: TextStyle(fontFamily: 'Tajawal-Regular'),
                                                             textDirection: TextDirection.rtl,
                                                             textAlign: TextAlign.center,
                                                             ),
                                                             Row(
                                                               children: <Widget>[
                                                                 Text(
                                                                   "سعر الكيلو",
                                                                   style: TextStyle(
                                                                     fontFamily: 'Tajawal-Regular',
                                                                     fontSize: 12,
                                                                     fontWeight: FontWeight.w200,
                                                                     color: Colors.deepOrange),
                                                                     textAlign: TextAlign.center,
                                                                     ),
                                                                     Icon(
                                                                       Icons.credit_card,
                                                                       color: Colors.grey,
                                                                       )
                                                     ],
                                   ),
                            ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey[300],
                                    ),
                                    child: Icon(Icons.remove,
                                        color: Colors.blueGrey, size: 15)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("")),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange[500],
                                    ),
                                    child: Icon(Icons.add,
                                        color: Colors.deepOrange, size: 15)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    trailing: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 7,
              left: 7,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(Icons.add_shopping_cart,
                      color: Colors.white70, size: 20),
                ),
              )
          )
        ],
      ),
    );
         }),
                              ),
                             );
                           }).toList(),
                        ),
                      ),
                  );
  }
}
