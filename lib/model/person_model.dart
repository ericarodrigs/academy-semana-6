class PersonModel {
  String? name;
  String? lastName;
  int? age;
  String? nationality;
  String? occupation;

  PersonModel({
    this.name,
    this.lastName,
    this.age,
    this.nationality,
    this.occupation,
  });

  PersonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lastName = json['lastName'];
    age = json['age'];
    nationality = json['nationality'];
    occupation = json['occupation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['lastName'] = lastName;
    data['age'] = age;
    data['nationality'] = nationality;
    data['occupation'] = occupation;
    return data;
  }
}
