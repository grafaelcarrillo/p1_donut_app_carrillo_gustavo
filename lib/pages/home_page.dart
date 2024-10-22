import 'package:flutter/material.dart';
import 'package:p1_donut_app_carrillo_gustavo/utils/my_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //donuttab
    //const MyTab(iconPath: "lib/icons/donut.png",),
    const MyTab(iconPath: "lib/icons/donut.png", label: "donut"),
    //burgertab
    const MyTab(iconPath: "lib/icons/burger.png", label:"burger"),
    //smoothietab
    const MyTab(iconPath: "lib/icons/smoothie.png", label: "smoothie",),
    //pancaketab
    const MyTab(iconPath: "lib/icons/pancakes.png", label: "pancakes"),
    //pizzatab
    const MyTab(iconPath: "lib/icons/pizza.png", label: "pizza"),
  ]; 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Icon(
              Icons.menu, 
              color: Colors.grey[800],
              ),
          ),
        actions: const [Padding(
          padding: EdgeInsets.only(right:24),
          child: Icon(Icons.person),
          )],
        ),
        body: Column(children:[
          //texto i want to eat
          const Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                Text("I want to ", style: TextStyle(fontSize:24)),
                Text("Eat", style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold, decoration: TextDecoration.underline)),
              ],
            ),
          ),
          //tabbar
          TabBar(tabs: myTabs),
          
          //tabbarview
          Expanded(child: TabBarView(children: [
          DonutTab(),
          const BurgerTab(),
          const SmoothieTab(),
          const PanCakeTab(),
          const PizzaTab()]
          )
          )
          //total del carrito
        ],),
      ),
    );
  }
}