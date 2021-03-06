import 'package:flutter/material.dart';
// my imports 
import 'pages.dart';

class CustomStep {
  final String title;
  final Widget page;
  CustomStep({@required this.title, @required this.page});
}

// ignore: must_be_immutable
class DeliveryStepperPage extends StatefulWidget {
  int currentPage;
  DeliveryStepperPage({Key key,this.currentPage=1}) : super(key: key);
  @override
  _DeliveryStepperPageState createState() => _DeliveryStepperPageState();
}

class _DeliveryStepperPageState extends State<DeliveryStepperPage> {
  ScrollController _scrollController;
  static const double STEP_WIDTH = 50;
  List<CustomStep> stepsList;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentPage,);
    stepsList = [
      CustomStep(
        title: 'السلة',
        page: Placeholder(
          color: Colors.deepOrange,
        ),
      ),
      CustomStep(
        title: 'التوصيل',
        page: DeliveryPage(),
      ),
      CustomStep(
        title: 'الدفع',
        page: PaymentPage(),
      ),
    ];
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  SizedBox buildStepDivider(int index) {
    return SizedBox(
      height: 50,
      child: Expanded(
        child:Container(
        alignment: Alignment.topCenter,
        child: Transform.translate(
          offset: Offset(0, 16),
          child: Container(
            color: index < widget.currentPage
                ? Theme.of(context).primaryColor
                : Colors.grey,
            height: 3,
            width: (MediaQuery.of(context).size.width)/4,
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
    ));
  }

  Widget painter(bool isChecked, bool wait) {
    return isChecked
        ? Icon(
            Icons.check_circle,
            color: Colors.deepOrange,
          )
        : (wait
            ? Icon(
                Icons.av_timer,
                color: Colors.blueGrey,
              )
            : Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey,
              ));
  }

  buildStep(int index) {
    bool isDone = index == widget.currentPage ? false : true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: 50,
        width: STEP_WIDTH,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            index <= widget.currentPage
                ? painter(isDone, true)
                : painter(false, false),
            Expanded(
                child: Text(
              stepsList[index].title,
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }

  _buildStepper(int currentStep) {

    return Container(
    height:60,
    width: MediaQuery.of(context).size.width,
    child:Card(
        elevation: 4.0,
        child: Center(child:ListView.builder(
            controller: _scrollController,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: stepsList.length,
            itemBuilder: (ctx, index) => index < stepsList.length - 1
                ? Row(
              children: <Widget>[
                      buildStep(index),
                      buildStepDivider(index)
                    ],
                  )
                : Row(
                children: <Widget>[buildStep(index)]))),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildStepper(widget.currentPage),
          Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        setState(() {
          widget.currentPage = index;
        });
      },
                itemCount: stepsList.length,
                itemBuilder: (ctx, index) => stepsList[index].page,
              )),
        ],
      ),
    );
  }
}


class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.grey[100],
      leading: Stack(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.deepOrange),
            onPressed: () {},
          ),
          Positioned(
            top: 3,
            right: 4,
            child: Container(
                padding: EdgeInsets.all(3),
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange[400],
                ),
                child: Center(
                  child: Text("1",
                      style: TextStyle(
                          fontFamily: 'Tajawal-Regular',
                          color: Colors.white70)),
                )),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.format_align_right, color: Colors.deepOrange),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Body extends StatefulWidget {
  final currentPage;

  const _Body({Key key, this.currentPage}) : super(key: key);

  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  PageController _pageController;
  List<CustomStep> stepsList;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentPage,);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView.builder(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
//      onPageChanged: (index) {
//        setState(() {
//          currentPage = index;
//        });
//      },
      itemCount: stepsList.length,
      itemBuilder: (ctx, index) => stepsList[index].page,
    ));
  }
}
