import 'package:chat_app/pages/event_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset("assets/images/raphael.png", width: 200,),
           const Text("Delchry 2024",
              style: TextStyle(
                fontSize:42,
                fontFamily: 'Poppins'
              ),
              ),
            const  Text(
                "Salon virtuel de l'informatique du 27 au 29 Octombre 2024",
                style: TextStyle(
                  fontSize: 24
                ),
                textAlign: TextAlign.center,
                ),

                Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      );
  }
}