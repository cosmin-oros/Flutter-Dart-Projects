import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String description =
        'Professor Albus Dumbledore knows the powerful Dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts Magizoologist Newt Scamander to lead an intrepid team of wizards, witches and one brave Muggle baker on a dangerous mission, where they encounter old and new beasts and clash with Grindelwald\'s growing legion of followers. But with the stakes so high, how long can Dumbledore remain on the sidelines?';

    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'images/movie-poster.jpg',
            width: width,
            height: width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text('6.8/10'),
                        Text(
                          'IMDb',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '63%',
                        ),
                        Text(
                          'Rotten Tomatoes',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text('4/10'),
                        Text(
                          'IGN',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Fantastic Beasts: The Secrets Of Dumbledore',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Chip(label: Text('Fantasy')),
                    SizedBox(
                      width: 8.0,
                    ),
                    Chip(label: Text('Adventure')),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage:
                        AssetImage('images/Eddie-Redmayne.jpg'),
                        radius: 30.0,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Johnny-Depp.jpg'),
                        radius: 30.0,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Jude-Law.jpg'),
                        radius: 30.0,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CircleAvatar(
                        backgroundImage:
                        AssetImage('images/Katherine-Waterston.jpg'),
                        radius: 30.0,
                      ),
                    ],
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.credit_card_rounded),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('Booking')
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}