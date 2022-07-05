import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Luan Rafael Batista Ramos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'Flutter | Dart Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                'Software Engineer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'I am a software engineer with a passion for creating beautiful and functional software. I am currently working as a software engineer at a startup called "FTeam - Flutter Specialist".',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'luanbatista904@gmail.com',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'luanbatistadev on Twitter | Instagram',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Main projects',
                style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Wrap(),
              const SizedBox(
                height: 20,
              ),
              Text(
                '© 2022 Luan Rafael Batista Ramos',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
