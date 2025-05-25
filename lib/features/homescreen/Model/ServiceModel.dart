class ServiceModel {
  final String title;
  final String subtitle;
  final String icon;
  final String background_image;

  ServiceModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.background_image,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> map) {
    return ServiceModel(
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      icon: map['icon'] ?? '',
      background_image: map['background_image'] ?? '',
    );
  }
}
