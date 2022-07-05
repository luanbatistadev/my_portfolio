import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';

abstract class GetListProjectsDatasource {
  Future<List<ProjectEntity>> getListProjects();
}
