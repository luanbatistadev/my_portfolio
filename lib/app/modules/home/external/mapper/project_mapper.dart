import 'package:my_portfolio/app/core/contracts/errors/errors.dart';
import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';

class ProjectMapper {
  static ProjectEntity fromJson(Map<String, dynamic> json) {
    try {
      return ProjectEntity(
        image: json['image'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
        link: json['link'] as String,
        secondTitle: json['secondTitle'] as String,
      );
    } catch (e, s) {
      throw MapperModelError('MapperModelError', s);
    }
  }
}
