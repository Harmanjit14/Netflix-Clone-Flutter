import 'package:flutter/material.dart';
import 'package:netflix/widgets/appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = new ScrollController();
  double offset = 0;

  @override
  void initState() {
    controller = ScrollController()
      ..addListener(() {
        setState(() {
          offset = controller.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast, color: Colors.white),
      ),
      appBar: PreferredSize(
        child: CustomAppBar(
          scrollOffset: 0,
        ),
        preferredSize: Size(size.width, 50),
      ),
      body: CustomScrollView(),
    );
  }
}
