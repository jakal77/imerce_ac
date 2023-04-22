import 'package:flutter/cupertino.dart';
import 'package:imerce_ac/screen/home/home_view_model.dart';
import 'package:imerce_ac/screen/home/widgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeWidgets homeWidgets = HomeWidgets();
  HomeViewModel homeViewModel = HomeViewModel();
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    pageController.addListener(() {
      //call every page ivew
      setState(() {
      });
    });
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          homeWidgets.pageView(
              imageList: homeViewModel.imageList,
              pageController: pageController),
          homeWidgets.indicator(
            currentIndex: pageController.hasClients? pageController.page!.round():0,
            length: homeViewModel.imageList.length,
          ),
        ],
      ),
    );
    // return const Placeholder();
  }
}
