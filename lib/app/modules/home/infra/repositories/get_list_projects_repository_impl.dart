import 'package:dartz/dartz.dart';
import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';
import 'package:my_portfolio/app/modules/home/domain/repositories/get_list_projects_repository.dart';
import 'package:my_portfolio/app/modules/home/infra/datasource/get_list_projects_datasource.dart';

class GetListProjectsRepositoryImpl implements GetListProjectsRepository {
  GetListProjectsRepositoryImpl(
    this._getListProjectsDatasource,
  );

  final GetListProjectsDatasource _getListProjectsDatasource;

  @override
  Future<Either<IError, List<ProjectEntity>>> getListProjects() async {
    try {
      final result =
          await _getListProjectsDatasource.getListProjects();

      return Right(result);
    } on IError catch (e) {
      return Left(e);
    }
  }
}
