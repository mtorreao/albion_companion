import 'package:albion_companion/app/shared/models/market_response.dart';

class MarketDataResponse {
  List<MarketResponse> items;

  MarketDataResponse({
    this.items,
  });

  MarketResponse get(int index) => items.elementAt(index);
}
