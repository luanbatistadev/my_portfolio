import 'package:dartz/dartz.dart';
import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';
import 'package:my_portfolio/app/modules/home/domain/repositories/get_list_projects_repository.dart';

abstract class GetListProjectsUsecase {
  Future<Either<IError, List<ProjectEntity>>> call();
}

class GetListProjectUsecaseImpl implements GetListProjectsUsecase {
  GetListProjectUsecaseImpl(
    this._getListProjectsRepository,
  );
  final GetListProjectsRepository _getListProjectsRepository;
  @override
  Future<Either<IError, List<ProjectEntity>>> call() async {
    return _getListProjectsRepository.getListProjects();
  }
}
