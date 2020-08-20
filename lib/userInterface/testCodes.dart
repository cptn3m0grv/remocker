
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