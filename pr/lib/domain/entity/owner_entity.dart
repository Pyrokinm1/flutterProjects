class OwnerEntity {
  late int id;
  final String surname;
  final String name;
  final String patronymic;
  final String date_of_acquzition;
  final String date_of_selling;
  OwnerEntity(
      {required this.surname,
      required this.name,
      required this.patronymic,
      required this.date_of_acquzition,
      required this.date_of_selling});
}

//enum EngineEnum{}