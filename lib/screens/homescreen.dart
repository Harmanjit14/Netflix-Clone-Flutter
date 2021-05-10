import 'package:flutter/material.dart';
import 'package:netflix/data/database.dart';
import 'package:netflix/widgets/export_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller;
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
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast, color: Colors.white),
      ),
      appBar: PreferredSize(
        child: CustomAppBar(
          scrollOffset: offset,
        ),
        preferredSize: Size(size.width, 50),
      ),
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverToBoxAdapter(
              child: HeaderWidget(
            content: sintelContent,
          )),
        ],
      ),
    );
  }
}
