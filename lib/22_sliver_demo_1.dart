import 'package:flutter/material.dart';
class SliverDemo1 extends StatelessWidget {
  List<String> productCategories = [
    'Electronics',
    'Clothing',
    'Books',
    'Toys',
    'Home Appliances',
    'Furniture',
    'Groceries',
    'Beauty',
    'Health',
    'Sports',
    'Automotive',
    'Jewelry'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
              SliverAppBar(
                  leading: Icon(Icons.account_circle),
                  title: Text("Sliver app bar"),
                  actions: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  ],
                  pinned: false,
                  snap: true,
                  floating: true,
              ),
              SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 10,
                                childAspectRatio: 2.0),
                    delegate: SliverChildBuilderDelegate((context,index){
                        return Card(
                            elevation: 10,
                            child: Container(
                                color: Colors.brown,
                                alignment: Alignment.center,
                                child: Text(productCategories[index].toString(),style: TextStyle(
                                    fontSize: 20,color: Colors.white
                                ),),
                            ),
                        );
                    },childCount: productCategories.length),

              ),
              SliverList(delegate:
            SliverChildBuilderDelegate((context,index){
              return Container(
                height: 100,
                padding: EdgeInsets.all(10),
                color: index.isEven ? Colors.blue : Colors.lightBlueAccent,
                child: Text(productCategories[index].toString(),
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
              );
            },childCount: productCategories.length)),
          ],
      ),
    );
  }
}
