abstract class DataBaseRequest {
  /// Таблица Роли
  ///
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUsers = 'Users';
  static const String tableEngine = 'Engine';
  static const String tableMark = 'Mark';
  static const String tableManufacturer = 'Manufacturer';
  static const String tableOwner = 'Owner';
  static const String tableFavorite = 'Favorite';
  static const String tableUserInfo = 'UserInfo';
  static const String tableCar = 'Car';
  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableEngine,
    tableMark,
    tableManufacturer,
    tableOwner,
    tableCar,
    tableFavorite,
    tableUserInfo,
  ];
  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableEngine,
    _createTableMark,
    _createTableManufacturer,
    _createTableOwner,
    _createTableCar,
    _createTableFavorite,
    _createTableUserInfo,
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") on delete cascade,PRIMARY KEY("id"))';

  static const String _createTableEngine =
      'CREATE TABLE "$tableEngine" ("id" INTEGER,"engine_power" TEXT NOT NULL ,"engine_series" INTEGER NOT NULL UNIQUE,"date_of_creation" TEXT NOT NULL,PRIMARY KEY("id"))';

  static const String _createTableMark =
      'CREATE TABLE "$tableMark" ("id" INTEGER,"car_mark" TEXT NOT NULL UNIQUE, TEXT NOT NULL,PRIMARY KEY("id"))';

  static const String _createTableManufacturer =
      'CREATE TABLE "$tableManufacturer" ("id" INTEGER,"country" TEXT NOT NULL ,"date_of_creation" TEXT NOT NULL ,PRIMARY KEY("id"))';

  static const String _createTableOwner =
      'CREATE TABLE "$tableOwner" ("id" INTEGER,"surname" TEXT NOT NULL ,"name" TEXT NOT NULL ,"patronymic" TEXT NOT NULL ,"date_of_acquzition" TEXT NOT NULL ,"date_of_selling" TEXT NOT NULL ,PRIMARY KEY("id"))';
  static const String _createTableFavorite =
      'CREATE TABLE "$tableFavorite" ("id" INTEGER, INTEGER,"id_user" INTEGER,"id_car" INTEGER,FOREIGN KEY("id_car") REFERENCES "Car"("id") on delete cascade,FOREIGN KEY("id_user") REFERENCES "Users"("id") on delete cascade,PRIMARY KEY("id"))';

  static const String _createTableUserInfo =
      'CREATE TABLE "$tableUserInfo" ("id" INTEGER,"surname" TEXT NOT NULL ,"name" TEXT NOT NULL ,"patronymic" TEXT NULL ,"date_of_birth" TEXT NOT NULL,FOREIGN KEY("id") REFERENCES "Users"("id") on delete cascade,PRIMARY KEY ("id"))';

  static const String _createTableCar =
      'CREATE TABLE "$tableCar" ("id" INTEGER NOT NULL UNIQUE,"number" INTEGER NOT NULL UNIQUE,"date_of_creation" TEXT NOT NULL ,"cost" INTEGER NOT NULL ,	"Model" TEXT NOT NULL ,"Photo" TEXT NOT NULL,"id_engine" INTEGER,"id_owner" INTEGER,"id_mark" INTEGER,"id_manufacturer" INTEGER,FOREIGN KEY("id_engine") REFERENCES "Engine"("id") on delete cascade,FOREIGN KEY("id_owner") REFERENCES "Owner"("id") on delete cascade,FOREIGN KEY("id_manufacturer") REFERENCES "Manufacturer"("id") on delete cascade,FOREIGN KEY("id_mark") REFERENCES "Mark"("id") on delete cascade,FOREIGN KEY("id_manufacturer") REFERENCES "Manufacturer"("id") on delete cascade,PRIMARY KEY("id"))';

  static String deleteTable(String table) => 'DROP TABLE $table';
}
