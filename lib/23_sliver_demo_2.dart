import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliverDemo2 extends StatelessWidget {
  final List<Map<String, dynamic>> team1 = [
    {
      'team': 'New York Yankees',
      'country': 'USA',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/commons/8/8a/New_York_Yankees_logo.svg',
      'marketValue': '8.2 billion',
    },
    {
      'team': 'Boston Red Sox',
      'country': 'USA',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Boston_Red_Sox_cap_logo.svg',
      'marketValue': '4.8 billion',
    },
    {
      'team': 'Chicago Cubs',
      'country': 'USA',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/commons/8/80/Chicago_Cubs_logo.svg',
      'marketValue': '4.6 billion',
    },
    {
      'team': 'Philadelphia Phillies',
      'country': 'USA',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Philadelphia_Phillies_Insignia.svg',
      'marketValue': '3.1 billion',
    },
    {
      'team': 'Los Angeles Angels',
      'country': 'USA',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Los_Angeles_Angels_of_Anaheim.svg',
      'marketValue': '2.75 billion',
    },
  ];
  final List<Map<String, dynamic>> team2 = [
    {
      'team': 'Real Madrid',
      'country': 'Spain',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/5/56/Real_Madrid_CF.svg',
      'marketValue': '€1.35 billion',
    },
    {
      'team': 'Manchester City',
      'country': 'England',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/e/eb/Manchester_City_FC_badge.svg',
      'marketValue': '€1.31 billion',
    },
    {
      'team': 'Arsenal',
      'country': 'England',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/5/53/Arsenal_FC.svg',
      'marketValue': '€1.31 billion',
    },
    {
      'team': 'Paris Saint-Germain (PSG)',
      'country': 'France',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/a/a7/Paris_Saint-Germain_F.C..svg',
      'marketValue': '€1.19 billion',
    },
    {
      'team': 'Chelsea',
      'country': 'England',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/c/cc/Chelsea_FC.svg',
      'marketValue': '€1.17 billion',
    },
    {
      'team': 'FC Barcelona',
      'country': 'Spain',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/4/47/FC_Barcelona_%28crest%29.svg',
      'marketValue': '€1.12 billion',  // Rounded/approx from recent €1.13bn trends
    },
    {
      'team': 'Liverpool',
      'country': 'England',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/0/0c/Liverpool_FC.svg',
      'marketValue': '€1.04 billion',
    },
    {
      'team': 'Bayern Munich',
      'country': 'Germany',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/commons/1/1b/FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg',
      'marketValue': '€980.95 million',
    },
    {
      'team': 'Tottenham Hotspur',
      'country': 'England',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/b/b4/Tottenham_Hotspur.svg',
      'marketValue': '€873.50 million',
    },
    {
      'team': 'Manchester United',
      'country': 'England',
      'logoUrl': 'https://upload.wikimedia.org/wikipedia/en/7/7a/Manchester_United_FC_crest.svg',
      'marketValue': '€719.15 million',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverGrid(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 2.0
                  ),
                  delegate:
                  SliverChildBuilderDelegate((context, index){
                      return Card(
                          elevation: 10,
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: [
                               Expanded(child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(team1[index]['team']
                                    , style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  color: Colors.blueAccent,
                                ),flex: 2,),
                               Expanded(
                                  child: SvgPicture.network(
                                      team1[index]['logoUrl'],
                                  ),
                                  flex: 5,
                                ),
                               Expanded(
                                  child: Container(
                                   padding: EdgeInsets.all(5),
                                   child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                          Text(team1[index]['country'],
                                          style: TextStyle(
                                            color: Colors.white
                                          ),),
                                          Text(team1[index]['marketValue'],
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                          )
                                      ],
                                   ),
                                   color: Colors.blueAccent,
                                                                 ),
                                 flex: 2,
                                ),
                             ],
                          ),
                      );
                  },
                      childCount: team1.length
                  ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index){
                    return  Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),           // ← nice breathing room
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // ← better spacing
                          children: [
                            // Text column takes available space
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: SvgPicture.network(
                                team2[index]['logoUrl'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(

                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch, // ← left align looks better

                                  children: [
                                    Text(
                                      team2[index]['team'],
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,           // ← safety
                                    ),
                                    Text(
                                      team2[index]['country'],
                                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                                    ),
                                    Text(
                                     team2[index]['marketValue'],                        // ← added € symbol for style
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Logo with constrained size

                          ],
                        ),
                      ),
                    );
    },childCount: 10)
              )
            ],
        ),
    );
  }
}
