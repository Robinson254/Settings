import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp/jewelary.dart';

class MyGrid extends StatelessWidget {
  
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount:10,
        gridDelegate:SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(context,index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border:Border.all(
                  color:Color.fromARGB(255, 42, 39, 39),
                  width:2.0,
                ),
              ),
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(Jewellary[index]['image']),
                
            ),
                  ),
          ),
      ),
      ),
    );
  }
}