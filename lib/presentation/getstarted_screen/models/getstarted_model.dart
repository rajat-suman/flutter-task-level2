/// This class defines the variables used in the [getstarted_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GetstartedModel {
  int? id;
  String? name;
  String? email;
  String? password;
  GetstartedModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  factory GetstartedModel.fromJson(Map<String, dynamic> json) {
    return GetstartedModel(
      id: json['id'] as int,
      name: json['firstName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}
