import 'dart:convert';

Medicine medicineFromJson(String str) => Medicine.fromJson(json.decode(str));

String medicineToJson(Medicine data) => json.encode(data.toJson());

class Medicine {
  Medicine({
    this.problems,
  });

  List<Problem>? problems;

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
    problems: json["problems"] == null ? null : List<Problem>.from(json["problems"].map((x) => Problem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "problems": problems == null ? null : List<dynamic>.from(problems!.map((x) => x.toJson())),
  };
}

class Problem {
  Problem({
    this.diabetes,
    this.asthma,
  });

  List<Diabetes>? diabetes;
  List<Asthma>? asthma;

  factory Problem.fromJson(Map<String, dynamic> json) => Problem(
    diabetes: json["Diabetes"] == null ? null : List<Diabetes>.from(json["Diabetes"].map((x) => Diabetes.fromJson(x))),
    asthma: json["Asthma"] == null ? null : List<Asthma>.from(json["Asthma"].map((x) => Asthma.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Diabetes": diabetes == null ? null : List<dynamic>.from(diabetes!.map((x) => x.toJson())),
    "Asthma": asthma == null ? null : List<dynamic>.from(asthma!.map((x) => x.toJson())),
  };
}

class Asthma {
  Asthma();

  factory Asthma.fromJson(Map<String, dynamic> json) => Asthma(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Diabetes {
  Diabetes({
    this.medications,
    this.labs,
  });

  List<Medication>? medications;
  List<Lab>? labs;

  factory Diabetes.fromJson(Map<String, dynamic> json) => Diabetes(
    medications: json["medications"] == null ? null : List<Medication>.from(json["medications"].map((x) => Medication.fromJson(x))),
    labs: json["labs"] == null ? null : List<Lab>.from(json["labs"].map((x) => Lab.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "medications": medications == null ? null : List<dynamic>.from(medications!.map((x) => x.toJson())),
    "labs": labs == null ? null : List<dynamic>.from(labs!.map((x) => x.toJson())),
  };
}

class Lab {
  Lab({
    this.missingField,
  });

  String? missingField;

  factory Lab.fromJson(Map<String, dynamic> json) => Lab(
    missingField: json["missing_field"] == null ? null : json["missing_field"],
  );

  Map<String, dynamic> toJson() => {
    "missing_field": missingField == null ? null : missingField,
  };
}

class Medication {
  Medication({
    this.medicationsClasses,
  });

  List<MedicationsClass>? medicationsClasses;

  factory Medication.fromJson(Map<String, dynamic> json) => Medication(
    medicationsClasses: json["medicationsClasses"] == null ? null : List<MedicationsClass>.from(json["medicationsClasses"].map((x) => MedicationsClass.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "medicationsClasses": medicationsClasses == null ? null : List<dynamic>.from(medicationsClasses!.map((x) => x.toJson())),
  };
}

class MedicationsClass {
  MedicationsClass({
    this.className,
    this.className2,
  });

  List<ClassName>? className;
  List<ClassName>? className2;

  factory MedicationsClass.fromJson(Map<String, dynamic> json) => MedicationsClass(
    className: json["className"] == null ? null : List<ClassName>.from(json["className"].map((x) => ClassName.fromJson(x))),
    className2: json["className2"] == null ? null : List<ClassName>.from(json["className2"].map((x) => ClassName.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "className": className == null ? null : List<dynamic>.from(className!.map((x) => x.toJson())),
    "className2": className2 == null ? null : List<dynamic>.from(className2!.map((x) => x.toJson())),
  };
}

class ClassName {
  ClassName({
    this.associatedDrug,
    this.associatedDrug2,
  });

  List<AssociatedDrug>? associatedDrug;
  List<AssociatedDrug>? associatedDrug2;

  factory ClassName.fromJson(Map<String, dynamic> json) => ClassName(
    associatedDrug: json["associatedDrug"] == null ? null : List<AssociatedDrug>.from(json["associatedDrug"].map((x) => AssociatedDrug.fromJson(x))),
    associatedDrug2: json["associatedDrug#2"] == null ? null : List<AssociatedDrug>.from(json["associatedDrug#2"].map((x) => AssociatedDrug.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "associatedDrug": associatedDrug == null ? null : List<dynamic>.from(associatedDrug!.map((x) => x.toJson())),
    "associatedDrug#2": associatedDrug2 == null ? null : List<dynamic>.from(associatedDrug2!.map((x) => x.toJson())),
  };
}

class AssociatedDrug {
  AssociatedDrug({
    this.name,
    this.dose,
    this.strength,
  });

  String? name;
  String? dose;
  String? strength;

  factory AssociatedDrug.fromJson(Map<String, dynamic> json) => AssociatedDrug(
    name: json["name"] == null ? null : json["name"],
    dose: json["dose"] == null ? null : json["dose"],
    strength: json["strength"] == null ? null : json["strength"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "dose": dose == null ? null : dose,
    "strength": strength == null ? null : strength,
  };
}
