import 'package:dartz/dartz.dart';
import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';

abstract class GetListProjectsRepository {
  Future<Either<IError, List<ProjectEntity>>> getListProjects();
}
