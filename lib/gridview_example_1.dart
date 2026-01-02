import 'package:flutter/material.dart';
class GridviewExample1 extends StatelessWidget {
  List<Map<String, dynamic>> iplTeams = [
    {
      "team": "Chennai Super Kings",
      "homeGround": "MA Chidambaram Stadium, Chennai",
      "trophies": 5,
      "captain": "Ruturaj Gaikwad",
      "logo": "https://upload.wikimedia.org/wikipedia/en/2/2b/Chennai_Super_Kings_Logo.svg"
    },
    {
      "team": "Mumbai Indians",
      "homeGround": "Wankhede Stadium, Mumbai",
      "trophies": 5,
      "captain": "Hardik Pandya",
      "logo": "https://upload.wikimedia.org/wikipedia/en/c/cd/Mumbai_Indians_Logo.svg"
    },
    {
      "team": "Kolkata Knight Riders",
      "homeGround": "Eden Gardens, Kolkata",
      "trophies": 2,
      "captain": "Shreyas Iyer",
      "logo": "https://upload.wikimedia.org/wikipedia/en/4/4c/Kolkata_Knight_Riders_Logo.svg"
    },
    {
      "team": "Royal Challengers Bengaluru",
      "homeGround": "M Chinnaswamy Stadium, Bengaluru",
      "trophies": 1,
      "captain": "Faf du Plessis",
      "logo": "https://upload.wikimedia.org/wikipedia/en/d/d4/Royal_Challengers_Bengaluru_Logo.svg"
    },
    {
      "team": "Sunrisers Hyderabad",
      "homeGround": "Rajiv Gandhi International Stadium, Hyderabad",
      "trophies": 1,
      "captain": "Pat Cummins",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Sunrisers_Hyderabad_Logo.svg/500px-Sunrisers_Hyderabad_Logo.svg.png"
    },
    {
      "team": "Rajasthan Royals",
      "homeGround": "Sawai Mansingh Stadium, Jaipur",
      "trophies": 1,
      "captain": "Sanju Samson",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/5/5c/This_is_the_logo_for_Rajasthan_Royals%2C_a_cricket_team_playing_in_the_Indian_Premier_League_%28IPL%29.svg/500px-This_is_the_logo_for_Rajasthan_Royals%2C_a_cricket_team_playing_in_the_Indian_Premier_League_%28IPL%29.svg.png"
    },
    {
      "team": "Delhi Capitals",
      "homeGround": "Arun Jaitley Stadium, Delhi",
      "trophies": 0,
      "captain": "Rishabh Pant",
      "logo": "https://upload.wikimedia.org/wikipedia/en/2/2f/Delhi_Capitals.svg"
    },
    {
      "team": "Punjab Kings",
      "homeGround": "IS Bindra Stadium, Mohali",
      "trophies": 0,
      "captain": "Shikhar Dhawan",
      "logo": "https://upload.wikimedia.org/wikipedia/en/d/d4/Punjab_Kings_Logo.svg"
    },
    {
      "team": "Gujarat Titans",
      "homeGround": "Narendra Modi Stadium, Ahmedabad",
      "trophies": 1,
      "captain": "Shubman Gill",
      "logo": "https://upload.wikimedia.org/wikipedia/en/0/09/Gujarat_Titans_Logo.svg"
    },
    {
      "team": "Lucknow Super Giants",
      "homeGround": "BRSABV Ekana Stadium, Lucknow",
      "trophies": 0,
      "captain": "KL Rahul",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/a/a9/Lucknow_Super_Giants_IPL_Logo.svg/500px-Lucknow_Super_Giants_IPL_Logo.svg.png"
    }
  ];
  String imgURL = "http://picsum.photos/300";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View Example 1"),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (item,index){
                return displayTeam(index);
            },itemCount: iplTeams.length,),
      ),
    );
  }

  Widget displayTeam(int index) {
      return SizedBox(
        height: 200,
        child: Card(
          elevation: 10,
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: double.infinity,
                child: Image.network(
                  imgURL,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(iplTeams[index]['team'].toString()),
                      Text(iplTeams[index]['captain'].toString()),
                      Text(iplTeams[index]['trophies'].toString() + " wins"),
                      Text(iplTeams[index]['homeGround'].toString()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
