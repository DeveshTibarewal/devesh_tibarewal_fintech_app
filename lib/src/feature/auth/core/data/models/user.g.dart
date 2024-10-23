// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      userId: fields[0] as String,
      userName: fields[1] as String,
      userEmail: fields[2] as String,
      userPassword: fields[3] as String,
      userTransactions: (fields[4] as List).cast<Transaction>(),
      userCurrency: fields[5] as String,
      monthlyLimit: fields[6] as double,
      userBalance: fields[7] as double,
      userIncome: fields[8] as double,
      userExpense: fields[9] as double,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.userEmail)
      ..writeByte(3)
      ..write(obj.userPassword)
      ..writeByte(4)
      ..write(obj.userTransactions)
      ..writeByte(5)
      ..write(obj.userCurrency)
      ..writeByte(6)
      ..write(obj.monthlyLimit)
      ..writeByte(7)
      ..write(obj.userBalance)
      ..writeByte(8)
      ..write(obj.userIncome)
      ..writeByte(9)
      ..write(obj.userExpense);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
