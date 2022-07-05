import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';
import 'package:my_portfolio/app/modules/home/domain/usecases/get_list_projects_usecase.dart';
import 'package:my_portfolio/app/modules/home/presenter/widget/card_project._widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GetListProjectsUsecase _getListProjectsUsecase =
      Modular.get<GetListProjectsUsecase>();
  List<ProjectEntity> list = [];
  @override
  void initState() {
    super.initState();
    getListProjects();
  }

  Future getListProjects() async {
    final result = await _getListProjectsUsecase();
    result.fold(
      (l) => l,
      (r) => setState(() {
        list = r;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isNotMinorHeight = MediaQuery.of(context).size.width > 780;
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25).copyWith(bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          'Luan Rafael Batista Ramos',
                          style: TextStyle(
                            fontSize: 35,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SelectableText(
                          'Flutter | Dart Developer',
                          style: TextStyle(
                            fontSize: 35,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SelectableText(
                          'Software Engineer',
                          style: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isNotMinorHeight)
                    SizedBox(
                      height: 170,
                      width: 350,
                      child: Image.asset(
                        'assets/images/mine.gif',
                      ),
                    )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: SelectableText(
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
              SelectableText(
                'Main projects',
                style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Wrap(
                children: list.map((e) {
                  return CardProjectWidget(card: e);
                }).toList(),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: isNotMinorHeight
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.end,
                children: [
                  if (isNotMinorHeight)
                    SizedBox(
                      height: 200,
                      width: 400,
                      child: Image.asset(
                        'assets/images/mine_end.gif',
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SelectableText(
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
                      SelectableText(
                        'luanbatista904@gmail.com',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SelectableText(
                        'luanbatistadev on Twitter | Instagram',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SelectableText(
                        '© 2022 Luan Rafael Batista Ramos',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
