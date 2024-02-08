class UserModel {
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

  UserModel({
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
}
