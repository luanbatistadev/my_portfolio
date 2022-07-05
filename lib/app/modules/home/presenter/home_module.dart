import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_portfolio/app/core/shared/services/projects_service.dart';
import 'package:my_portfolio/app/modules/home/domain/usecases/get_list_projects_usecase.dart';
import 'package:my_portfolio/app/modules/home/external/datasource/get_list_projects_datasource_impl.dart';
import 'package:my_portfolio/app/modules/home/infra/repositories/get_list_projects_repository_impl.dart';
import 'package:my_portfolio/app/modules/home/presenter/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => GetListProjectUsecaseImpl(i())),
        Bind.factory((i) => GetListProjectsRepositoryImpl(i())),
        Bind.factory((i) => GetListProjectsDatasourceimpl(i())),
        Bind.lazySingleton((i) => ProjectsService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
