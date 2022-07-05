import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/core/shared/services/projects_service.dart';
import 'package:my_portfolio/app/core/shared/utils/data.dart';
import 'package:my_portfolio/app/modules/home/external/datasource/get_list_projects_datasource_impl.dart';

class MockProjectsService extends Mock implements ProjectsService {}

void main() {
  final service = MockProjectsService();
  final datasource = GetListProjectsDatasourceimpl(service);
  test('deve testar se o datasource está completando', () {
    when(() => service.getProjects()).thenAnswer(
      (_) async => jsonResponse,
    );

    final result = datasource.getListProjects();
    expect(result, completes);
  });

  test(
      'deve retornar um Erro de Mapper quando receber um json invalido Erro: MapperModelError',
      () {
    when(() => service.getProjects()).thenAnswer(
      (_) async => jsonResponseInvalid,
    );

    final result = datasource.getListProjects();

    expect(
      result,
      throwsA(isA<IError>()),
    );
  });
  test(
      'deve retornar um Erro de datasource quando receber um json invalido Erro: DatasourceError',
      () {
    when(() => service.getProjects()).thenThrow(
      (_) async => DataSourceError('message', StackTrace.current),
    );

    final result = datasource.getListProjects();

    expect(
      result,
      throwsA(isA<IError>()),
    );
  });
}
