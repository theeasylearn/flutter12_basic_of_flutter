import 'package:flutter/material.dart';
class ListViewDemo3 extends StatelessWidget {
  String imgURL = "https://picsum.photos/100/100";
  final List<Map<String, String>> students = [
    {"name":"Aarav Patel","rollNo":"1","dob":"2008-01-12","gender":"Male","photo":"https://picsum.photos/seed/1/200"},
    {"name":"Diya Shah","rollNo":"2","dob":"2008-02-18","gender":"Female","photo":"https://picsum.photos/seed/2/200"},
    {"name":"Vivaan Mehta","rollNo":"3","dob":"2007-11-05","gender":"Male","photo":"https://picsum.photos/seed/3/200"},
    {"name":"Ananya Joshi","rollNo":"4","dob":"2008-03-22","gender":"Female","photo":"https://picsum.photos/seed/4/200"},
    {"name":"Aditya Verma","rollNo":"5","dob":"2007-07-14","gender":"Male","photo":"https://picsum.photos/seed/5/200"},
    {"name":"Isha Desai","rollNo":"6","dob":"2008-09-09","gender":"Female","photo":"https://picsum.photos/seed/6/200"},
    {"name":"Rohan Kumar","rollNo":"7","dob":"2007-12-30","gender":"Male","photo":"https://picsum.photos/seed/7/200"},
    {"name":"Kavya Trivedi","rollNo":"8","dob":"2008-05-16","gender":"Female","photo":"https://picsum.photos/seed/8/200"},
    {"name":"Arjun Singh","rollNo":"9","dob":"2007-10-01","gender":"Male","photo":"https://picsum.photos/seed/9/200"},
    {"name":"Nisha Patel","rollNo":"10","dob":"2008-06-27","gender":"Female","photo":"https://picsum.photos/seed/10/200"},
    {"name":"Yash Malhotra","rollNo":"11","dob":"2007-08-19","gender":"Male","photo":"https://picsum.photos/seed/11/200"},
    {"name":"Pooja Rana","rollNo":"12","dob":"2008-04-11","gender":"Female","photo":"https://picsum.photos/seed/12/200"},
    {"name":"Mohit Gupta","rollNo":"13","dob":"2007-09-03","gender":"Male","photo":"https://picsum.photos/seed/13/200"},
    {"name":"Sneha Kulkarni","rollNo":"14","dob":"2008-12-07","gender":"Female","photo":"https://picsum.photos/seed/14/200"},
    {"name":"Rahul Choudhary","rollNo":"15","dob":"2007-06-25","gender":"Male","photo":"https://picsum.photos/seed/15/200"},
    {"name":"Neha Agarwal","rollNo":"16","dob":"2008-08-02","gender":"Female","photo":"https://picsum.photos/seed/16/200"},
    {"name":"Sahil Jain","rollNo":"17","dob":"2007-05-10","gender":"Male","photo":"https://picsum.photos/seed/17/200"},
    {"name":"Ritika Bansal","rollNo":"18","dob":"2008-11-21","gender":"Female","photo":"https://picsum.photos/seed/18/200"},
    {"name":"Kunal Soni","rollNo":"19","dob":"2007-04-17","gender":"Male","photo":"https://picsum.photos/seed/19/200"},
    {"name":"Mansi Goyal","rollNo":"20","dob":"2008-10-29","gender":"Female","photo":"https://picsum.photos/seed/20/200"}
  ];
  Widget displayStudent(Map<String, String> student)
  {
    return (ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(student['photo'].toString()),

      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(student['name'].toString(),textScaleFactor: 1.2,),
          Text("R.R 38",textScaleFactor: 1.2,),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(student['dob'].toString(),textScaleFactor: 1.1,),
          Text(student['gender'].toString(),textScaleFactor: 1.1,),
        ],
      ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Demo 3"),
        ),
        body: Card(
          elevation: 10,
          child: ListView.builder(itemBuilder: (BuildContext bc,int index) {
            return displayStudent(students[index]);
          },itemCount: students.length,)
        )
      ),
    );
  }
}
