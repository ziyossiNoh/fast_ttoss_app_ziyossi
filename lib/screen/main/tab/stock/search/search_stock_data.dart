import 'package:fast_app_base/common/util/local_json.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스', '테슬라', '엔비디아']);
    loadLocalStockJson();

    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList =
        await LocalJson.getObjectList<SimpleStock>("stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if(keyword.isEmpty){
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value =
        stocks.where((element) => element.name.contains(keyword)).toList();
  }

  void addHistory(SimpleStock stock) {
    searchHistoryList.add(stock.name);
  }

  void removeHistory(String stockName) {
    searchHistoryList.remove(stockName);
  }
}
