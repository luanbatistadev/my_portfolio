import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';
import 'package:my_portfolio/app/modules/home/infra/datasource/get_list_projects_datasource.dart';
import 'package:my_portfolio/app/modules/home/infra/repositories/get_list_projects_repository_impl.dart';

class GetListProjectsDatasourceMock extends Mock
    implements GetListProjectsDatasource {}

void main() {
  final datasource = GetListProjectsDatasourceMock();
  final repository = GetListProjectsRepositoryImpl(datasource);

  group('Group GetListProjectsRepository Test', () {
    test('deve retornar uma List<ProjectsEntity> quando for passado dados validos',
        () async {
      when(() => datasource.getListProjects()).thenAnswer(
        (_) async => <ProjectEntity>[],
      );
      final result = await repository.getListProjects();
      expect(result.fold(id, id), isA<List<ProjectEntity>>());
    });

    test('deve retornar um MapperModelError se o Mapper falhar', () async {
      when(() => datasource.getListProjects()).thenThrow(
        MapperModelError('message', StackTrace.current),
      );
      final result = await repository.getListProjects();
      expect(result.fold(id, id), isA<IError>());
    });

    test('deve retornar um DatasourceError se o Datasource falhar', () async {
      when(() => datasource.getListProjects()).thenThrow(
        DataSourceError('message', StackTrace.current),
      );
      final result = await repository.getListProjects();
      expect(result.fold(id, id), isA<IError>());
    });
  });
}
