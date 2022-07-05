import 'package:my_portfolio/app/modules/home/domain/entities/project_entity.dart';

class ProjectMapper {
  static ProjectEntity fromJson(Map<String, dynamic> json) {
    return ProjectEntity(
      image: json['image'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      secondTitle: json['secondTitle'] as String,
    );
  }
}
