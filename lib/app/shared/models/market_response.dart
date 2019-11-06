class MarketResponse {
  String itemId;
  String city;
  int quality;
  int sellPriceMin;
  DateTime sellPriceMinDate;
  int sellPriceMax;
  DateTime sellPriceMaxDate;
  int buyPriceMin;
  DateTime buyPriceMinDate;
  int buyPriceMax;
  DateTime buyPriceMaxDate;

  MarketResponse({
    this.itemId,
    this.city,
    this.quality,
    this.sellPriceMin,
    this.sellPriceMinDate,
    this.sellPriceMax,
    this.sellPriceMaxDate,
    this.buyPriceMin,
    this.buyPriceMinDate,
    this.buyPriceMax,
    this.buyPriceMaxDate,
  });

  factory MarketResponse.fromMap(Map<String, dynamic> json) => MarketResponse(
        itemId: json["item_id"] == null ? null : json["item_id"],
        city: json["city"] == null ? null : json["city"],
        quality: json["quality"] == null ? null : json["quality"],
        sellPriceMin:
            json["sell_price_min"] == null ? null : json["sell_price_min"],
        sellPriceMinDate: json["sell_price_min_date"] == null
            ? null
            : DateTime.parse(json["sell_price_min_date"]),
        sellPriceMax:
            json["sell_price_max"] == null ? null : json["sell_price_max"],
        sellPriceMaxDate: json["sell_price_max_date"] == null
            ? null
            : DateTime.parse(json["sell_price_max_date"]),
        buyPriceMin:
            json["buy_price_min"] == null ? null : json["buy_price_min"],
        buyPriceMinDate: json["buy_price_min_date"] == null
            ? null
            : DateTime.parse(json["buy_price_min_date"]),
        buyPriceMax:
            json["buy_price_max"] == null ? null : json["buy_price_max"],
        buyPriceMaxDate: json["buy_price_max_date"] == null
            ? null
            : DateTime.parse(json["buy_price_max_date"]),
      );

  Map<String, dynamic> toMap() => {
        "item_id": itemId == null ? null : itemId,
        "city": city == null ? null : city,
        "quality": quality == null ? null : quality,
        "sell_price_min": sellPriceMin == null ? null : sellPriceMin,
        "sell_price_min_date": sellPriceMinDate == null
            ? null
            : sellPriceMinDate.toIso8601String(),
        "sell_price_max": sellPriceMax == null ? null : sellPriceMax,
        "sell_price_max_date": sellPriceMaxDate == null
            ? null
            : sellPriceMaxDate.toIso8601String(),
        "buy_price_min": buyPriceMin == null ? null : buyPriceMin,
        "buy_price_min_date":
            buyPriceMinDate == null ? null : buyPriceMinDate.toIso8601String(),
        "buy_price_max": buyPriceMax == null ? null : buyPriceMax,
        "buy_price_max_date":
            buyPriceMaxDate == null ? null : buyPriceMaxDate.toIso8601String(),
      };
}
