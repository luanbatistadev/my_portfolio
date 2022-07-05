import 'package:my_portfolio/app/core/shared/services/projects_service.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';
import 'package:my_portfolio/app/modules/home/external/mapper/project_mapper.dart';
import 'package:my_portfolio/app/modules/home/infra/datasource/get_list_projects_datasource.dart';

class GetListProjectsDatasourceimpl implements GetListProjectsDatasource {
  const GetListProjectsDatasourceimpl(
    this._projectsService,
  );

  final ProjectsService _projectsService;

  @override
  Future<List<ProjectEntity>> getListProjects() async {
    final result = await _projectsService.getProjects();
    final listProjectsEntity =
        result.map((e) => ProjectMapper.fromJson(e)).toList();
    return listProjectsEntity;
  }
}
