class CarEntity {
  late int id;
  final String number;
  final String date_of_creation;
  final int cost;
  final String model;
  final int id_engine;
  final int id_owner;
  final int id_manufacturer;
  final int id_mark;
  CarEntity({
    required this.number,
    required this.date_of_creation,
    required this.cost,
    required this.model,
    required this.id_engine,
    required this.id_owner,
    required this.id_manufacturer,
    required this.id_mark,
  });
}

//enum EngineEnum{}