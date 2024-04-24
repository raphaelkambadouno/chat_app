import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Deuxiemes page 


class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
 final events =[
    {
      "speaker": "Lion Chamla",
      "date": "13h à 18h ",
      "subject": "Le code legacy",
      "avatar": "damien"
    },
    {
      "speaker": "Raphael Nadal",
      "date": "18h à 20h ",
      "subject": "Git blame --no code",
      "avatar": "intelo"
    },
    {
      "speaker": "Defendd Inteligence",
      "date": "14h à 17h ",
      "subject": "A la decoubverte des IA generatif",
      "avatar": "lior"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index){
            final event = events[index];
            final avatar = event['avatar'];
            final speaker = event['speaker'];
            final date = event['date'];
            final subject = event['subject'];

            return Card(
            child: ListTile(
              leading: Image.asset("assets/images/$avatar.jpg"),
              title: Text('$speaker ($date)'),
              subtitle: Text('$subject'),
              trailing: Icon(Icons.more_vert),
            ),
          );
          },
         
        ),
        );
  }
}