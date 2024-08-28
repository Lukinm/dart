import 'package:dart_bank/models/account.dart';

Future<void> transferService(origin, Account destination, double value) async {
  if (origin == destination) {
    throw ArgumentError('Não é possível transferir para a mesma conta.');
  }
  if (value <= 0) {
    throw ArgumentError('O valor da transferência deve ser maior que zero.');
  }
  if (origin.getBalance()< value) {
    throw ArgumentError('Saldo insuficiente na conta de origem.');
  }

  origin.removeBalance(value);
  destination.addBalance(value);
}