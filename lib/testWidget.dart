import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:pages_app/productDescription.dart';

class Test extends StatelessWidget {
  List<Widget> items = [CardWidget()];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        body:
            //   Column(
            // children: [
            // Expanded(
//           child: StaggeredGridView.countBuilder(
//   crossAxisCount: 4,
//   itemCount: 8,
//   itemBuilder: (BuildContext context, int index) => new Container(
//       color: Colors.green,
//       child: new Center(
//         child: new CircleAvatar(
//           backgroundColor: Colors.white,
//           child: new Text('$index'),
//         ),
//       )),
//   staggeredTileBuilder: (int index) =>
//       new StaggeredTile.count(2, index.isEven ? 2 : 1),
//   mainAxisSpacing: 4.0,
//   crossAxisSpacing: 4.0,
// )

            // scrollDirection: Axis.vertical,
            // // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // //     crossAxisCount: 2, crossAxisSpacing: 5),
            // itemCount: 10,
            // itemBuilder: (BuildContext context, int index) {
            //   return CardWidget(height: 150, width: double.infinity);

            // )
            //   ],
            // )
            GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 3,
                    crossAxisCount: 2,
                    childAspectRatio: 0.6),
                itemBuilder: (BuildContext context, int index) {
                  return CardWidget();
                }));
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.close,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDescription()));
                },
                child: Image.asset(
                  'drawable/image_placeholder.png',
                  height: constraints.maxHeight * 0.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '0',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  IconButton(
                      icon: Image.asset(
                        'drawable/heart_no_selected.png',
                        height: constraints.maxHeight * 0.3,
                        width: constraints.maxWidth * 0.1,
                      ),
                      onPressed: () {}),
                ],
              ),
              Text(
                'Product Description',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.01,
              ),
              Text(
                'Product currency' + 'Product Price',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 15),
              ),
            ],
          ),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
}
