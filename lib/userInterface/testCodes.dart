
// class HomePage extends StatelessWidget{
//   @override
//   final _controller = ScrollController();
//   final _height = 100.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _animateToIndex(10),
//         child: Icon(Icons.arrow_downward),
//       ),
//       body: ListView.builder(
//         controller: _controller,
//         itemCount: 100,
//         itemBuilder: (_, i) => Container(
//           height: _height,
//           child: Card(child: Center(child: Text("Item $i"))),
//         ),
//       ),
//     );
//   }

//   _animateToIndex(i) => _controller.animateTo(_height * i, duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn);
// }



// body: CustomScrollView(
        //   slivers: <Widget>[
        //     SliverAppBar(
        //       expandedHeight: 200,
        //       title: Text("Docker"),
        //       flexibleSpace: FlexibleSpaceBar(
        //         background: Image.asset("assets/images/dockerHome.png"),
        //       ),
        //     ),
        //     SliverList(
        //       delegate: SliverChildBuilderDelegate((context, index) => 
        //         Card(
        //           child: Container(
        //             padding: EdgeInsets.all(10.0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: <Widget>[
        //                 CircleAvatar(
        //                   backgroundColor: Colors.black,
        //                 ),
        //                 Text("Docker"),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),