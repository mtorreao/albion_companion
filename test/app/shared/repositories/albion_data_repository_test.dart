import 'package:albion_companion/app/shared/models/location.dart';
import 'package:albion_companion/app/shared/models/market_data_response.dart';
import 'package:albion_companion/app/shared/models/market_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:albion_companion/app/shared/repositories/albion_data_repository.dart';

import '../constants/location_constants.dart';

class MockClient extends Mock implements Dio {}

void main() {
  AlbionDataRepository repository;
  var client;

  setUp(() {
    repository = AlbionDataRepository();
    client = Dio();
  });

  group('AlbionDataRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<AlbionDataRepository>());
    });

    test('Market Data is responding', () async {
      MarketDataResponse data =
          await repository.getMarketData(client, 'T4_WOOD');
      expect(data.get(0).itemId, 'T4_WOOD');
    });

    test('Market Data with locations', () async {
      MarketDataResponse data =
          await repository.getMarketData(client, 'T4_WOOD', locations: [
        LocationConstants.Lymhurst,
        LocationConstants.BridgeWatch,
      ]);
      expect(data.get(1).city, LocationConstants.Lymhurst.name);
      expect(data.get(0).city, LocationConstants.BridgeWatch.name);
    });
  });
}
