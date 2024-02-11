class DUserModel {
  int id;
  String? user_login,
      user_pass,
      user_nicename,
      user_email,
      user_url,
      user_activation_key,
      display_name;
  DateTime user_registered;
  int? user_status;

  DUserModel({
    required this.id,
    this.user_login,
    this.user_pass,
    this.user_nicename,
    this.user_email,
    this.user_url,
    required this.user_registered,
    this.user_activation_key,
    this.user_status,
    this.display_name,
  });

  factory DUserModel.fromJson(Map<String, dynamic> json) {
    return DUserModel(
      id: json['id'] != null ? int.parse(json['id'].toString()) : 0,
      user_login: json['user_login'],
      user_pass: json['user_pass'],
      user_nicename: json['user_nicename'],
      user_email: json['user_email'],
      user_url: json['user_url'],
      user_registered: DateTime.parse(json['user_registered']),
      user_activation_key: json['user_activation_key'],
      user_status: json['user_status'] != null
          ? int.parse(json['user_status'].toString())
          : 0,
      display_name: json['display_name'],
    );
  }
}
