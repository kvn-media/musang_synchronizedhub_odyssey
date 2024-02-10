import 'dart:async';

import 'package:musang_syncronizehub_odyssey/dao/atg_dao.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_summary_dao.dart';
import 'package:musang_syncronizehub_odyssey/dao/user_dao.dart';

import 'package:musang_syncronizehub_odyssey/prisma/generated_dart_client/client.dart';

class PrismaService {
  var _client = PrismaClient();
  var _userDAO = UserDAO();
  var _atgDAO = AtgDAO();
  var _atgSumDAO = AtgSummaryDAO();

  FutureOr<T> providePrisma<T>(
      FutureOr<T> Function(PrismaClient prisma) main) async {
    try {
      return await main(_client);
    } finally {
      await _client.$disconnect();
    }
  }

  createUserMultipleRecords() async {
    await _userDAO.createUserMultipleRecords(_client);
  }

  createAtgMultipleRecords() async {
    await _atgDAO.createAtgMultipleRecords(_client);
  }

  createAtgSumMultipleRecords() async {
    await _atgSumDAO.createAtgSumMultipleRecords(_client);
  }
}
