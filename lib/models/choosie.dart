class Choosie {
  bool chosen;
  String chosenBy;
  String chosenValue;
  String userName;
  List values;
  String description;

  Choosie({
    required this.chosen,
    required this.chosenBy,
    required this.chosenValue,
    required this.userName,
    required this.values,
    required this.description,
  });

  factory Choosie.fromJson(Map<String, dynamic> json) {
    return Choosie(
      chosen: json['chosen'],
      chosenBy: json['chosenBy'],
      chosenValue: json['chosenValue'],
      userName: json['userName'],
      values: json['values'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "chosen": chosen,
      "chosenBy": chosenBy,
      "chosenValue": chosenValue,
      "userName": userName,
      "values": values,
      "description": description,
    };
  }
}
