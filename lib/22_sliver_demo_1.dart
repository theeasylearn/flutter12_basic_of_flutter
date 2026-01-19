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
    'Jewelry',
    'Shoes',
    'Bags',
    'Accessories',
    'Kitchenware',
    'Office Supplies',
    'Pet Supplies',
    'Baby Products',
    'Gardening',
    'Tools',
    'Musical Instruments',
    'Video Games',
    'Movies',
    'Music',
    'Software',
    'Art Supplies',
    'Crafts',
    'Outdoor Gear',
    'Travel Accessories'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
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
              },childCount: productCategories.length))
          ],
      ),
    );
  }
}
