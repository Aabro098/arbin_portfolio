class ProjectModel {
  ProjectModel({
    required this.title,
    required this.description,
    required this.status,
    this.link,
  });
  final String title;
  final String description;
  final String status;
  final String? link;
}
