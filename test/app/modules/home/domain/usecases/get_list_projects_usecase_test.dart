import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';
import 'package:my_portfolio/app/modules/home/domain/repositories/get_list_projects_repository.dart';
import 'package:my_portfolio/app/modules/home/domain/usecases/get_list_projects_usecase.dart';

class GetListProjectsRepositoryMock extends Mock
    implements GetListProjectsRepository {}

void main() {
  final repository = GetListProjectsRepositoryMock();
  final usecase = GetListProjectUsecaseImpl(repository);

  group('Get List Project Usecase Test', () {
    test('deve retornar uma List<ProjectEntity> quando o json vier valido',
        () async {
      when(() => repository.getListProjects()).thenAnswer(
        (_) async => const Right(
          <ProjectEntity>[],
        ),
      );
      final result = await usecase();
      expect(result.fold(id, id), isA<List<ProjectEntity>>());
    });

    test('deve retornar um erro  de Mapper quando o json for invalido',
        () async {
      when(() => repository.getListProjects()).thenAnswer(
        (_) async => Left(
          MapperModelError('message', StackTrace.current),
        ),
      );
      final result = await usecase();
      expect(result.fold(id, id), isA<IError>());
    });
  });
}
