class ProjectModel {
  ProjectModel({
    required this.title,
    required this.description,
    required this.status,
    this.link,
    this.appLogo,
  });
  final String title;
  final String description;
  final String status;
  final String? link;
  final String? appLogo;
}
