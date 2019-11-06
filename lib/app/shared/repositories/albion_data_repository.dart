import 'package:albion_companion/app/shared/models/location.dart';
import 'package:albion_companion/app/shared/models/market_data_response.dart';
import 'package:albion_companion/app/shared/models/market_response.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';

class AlbionDataRepository extends Disposable {
  static const URL = "https://www.albion-online-data.com/api/v2/stats/Prices/";

  Future<MarketDataResponse> getMarketData(
    Dio client,
    String itemId, {
    List<Location> locations,
  }) async {
    final queryParameters = Map<String, dynamic>();
    queryParameters.addAll(_getLocationQueryParameters(locations));
    final response = await client.get<List<dynamic>>(URL + itemId,
        queryParameters: queryParameters);
    return MarketDataResponse(
      items: response.data.map((item) => MarketResponse.fromMap(item)).toList(),
    );
  }

  Map<String, String> _getLocationQueryParameters(List<Location> locations) {
    String locationStr = '';
    if (locations != null && locations.isNotEmpty) {
      for (var location in locations) {
        if (location.name != null && location.name.isNotEmpty) {
          locationStr += location.name + ',';
        }
      }
      locationStr.substring(0, locationStr.length - 1);
      return {
        'locations': locationStr,
      };
    }
    return {};
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
