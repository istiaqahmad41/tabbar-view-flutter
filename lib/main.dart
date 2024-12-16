import 'package:flutter/material.dart';

void main() {
  runApp( Tabbar_15_demo());
}

class Tabbar_15_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter TabBar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.directions_car), text: "Car"),
            Tab(icon: Icon(Icons.directions_transit), text: "Transit"),
            Tab(icon: Icon(Icons.directions_bike), text: "Bike"),
            Tab(icon: Icon(Icons.access_alarm), text: "alarm"),
            Tab(icon: Icon(Icons.dashboard), text: "dashboard")
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Car Tab')),
          Center(child: Text('Transit Tab')),
          Center(child: Text('Bike Tab')),
          Center(child: Text('Sleep')),
          Center(child: Text('Dashboard Tab'))
        ],
      ),
    );
  }
}