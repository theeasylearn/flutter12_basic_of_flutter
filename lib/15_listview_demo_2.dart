import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListViewDemo2 extends StatelessWidget {
  final List<Map<String, String>> countries = [
    {
      "name": "India",
      "capital": "New Delhi",
      "currency": "Indian Rupee",
      "flag": "https://upload.wikimedia.org/wikipedia/en/4/41/Flag_of_India.svg"
    },
    {
      "name": "United States",
      "capital": "Washington, D.C.",
      "currency": "United States Dollar",
      "flag": "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg"
    },
    {
      "name": "Brazil",
      "capital": "Brasília",
      "currency": "Brazilian Real",
      "flag": "https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg"
    },
    {
      "name": "Canada",
      "capital": "Ottawa",
      "currency": "Canadian Dollar",
      "flag": "https://upload.wikimedia.org/wikipedia/en/c/cf/Flag_of_Canada.svg"
    },
    {
      "name": "United Kingdom",
      "capital": "London",
      "currency": "Pound Sterling",
      "flag": "https://upload.wikimedia.org/wikipedia/en/a/ae/Flag_of_the_United_Kingdom.svg"
    },
    {
      "name": "France",
      "capital": "Paris",
      "currency": "Euro",
      "flag": "https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg"
    },
    {
      "name": "Germany",
      "capital": "Berlin",
      "currency": "Euro",
      "flag": "https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg"
    },
    {
      "name": "Russia",
      "capital": "Moscow",
      "currency": "Russian Ruble",
      "flag": "https://upload.wikimedia.org/wikipedia/en/f/f3/Flag_of_Russia.svg"
    },
    {
      "name": "China",
      "capital": "Beijing",
      "currency": "Renminbi",
      "flag": "https://upload.wikimedia.org/wikipedia/en/f/fa/Flag_of_the_People%27s_Republic_of_China.svg"
    },
    {
      "name": "Japan",
      "capital": "Tokyo",
      "currency": "Japanese Yen",
      "flag": "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg"
    },
    {
      "name": "Australia",
      "capital": "Canberra",
      "currency": "Australian Dollar",
      "flag": "https://upload.wikimedia.org/wikipedia/en/b/b9/Flag_of_Australia.svg"
    },
    {
      "name": "New Zealand",
      "capital": "Wellington",
      "currency": "New Zealand Dollar",
      "flag": "https://upload.wikimedia.org/wikipedia/en/3/3e/Flag_of_New_Zealand.svg"
    },
    {
      "name": "South Africa",
      "capital": "Pretoria",
      "currency": "South African Rand",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/a/af/Flag_of_South_Africa.svg"
    },
    {
      "name": "Nigeria",
      "capital": "Abuja",
      "currency": "Naira",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/7/79/Flag_of_Nigeria.svg"
    },
    {
      "name": "Egypt",
      "capital": "Cairo",
      "currency": "Egyptian Pound",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg"
    },
    {
      "name": "Argentina",
      "capital": "Buenos Aires",
      "currency": "Argentine Peso",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg"
    },
    {
      "name": "Mexico",
      "capital": "Mexico City",
      "currency": "Mexican Peso",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/f/fc/Flag_of_Mexico.svg"
    },
    {
      "name": "Saudi Arabia",
      "capital": "Riyadh",
      "currency": "Saudi Riyal",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/0/0d/Flag_of_Saudi_Arabia.svg"
    },
    {
      "name": "Indonesia",
      "capital": "Jakarta",
      "currency": "Indonesian Rupiah",
      "flag": "https://upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_Indonesia.svg"
    },
    {
      "name": "Italy",
      "capital": "Rome",
      "currency": "Euro",
      "flag": "https://upload.wikimedia.org/wikipedia/en/0/03/Flag_of_Italy.svg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    Widget displayCountry(Map<String, String> item)
    {
      return Container(
        height: 200,
        width: double.infinity,
        child: Card(
          elevation: 10,
          child: Stack(
            children: [
              Positioned(
                left: 0,top: 0,
                child:  SvgPicture.network(
                  item['flag'].toString(),
                  fit: BoxFit.cover,width: 200,height: 200,
                ),),
              Positioned(child: Container(
                  width: 350,
                  color: Colors.black.withOpacity(0.50),
                  child: Text(item['name'].toString(),textScaleFactor: 2.0,style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold
                  ),)),
                left: 0,top: 0,
              ),
              Positioned(
                  bottom: 0,left: 0,
                  child: Container(
                    color: Colors.white.withOpacity(0.50),
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item['capital'].toString(),textScaleFactor: 1.5,),
                        Text(item['currency'].toString(),textScaleFactor: 1.5,),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      );
    }
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Example of list view"),),
          body: ListView.builder(itemBuilder: (BuildContext bc,int index){
              return displayCountry(countries[index]);
          },itemCount: countries.length,),
        ),
    );
  }
}
