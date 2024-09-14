import 'package:chess/presentation/customs/Menu_Card.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData query = MediaQuery.of(context);
    final deviceSize = query.size;


    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[

            Text('Check-Mate', style: Theme.of(context).textTheme.displayLarge,),

            const SizedBox(height: 30,),
            
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [

                Menu_Card('Computer', Icons.computer, context, '/board'),

                Menu_Card('Player', Icons.person, context, '/board'),

                Menu_Card('Settings', Icons.settings, context, '/board'),

                Menu_Card('Info', Icons.book, context, '/board'),

              ],
            )

          ],

        ),
      ),
    );
  }
}
