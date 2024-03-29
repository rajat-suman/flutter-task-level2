import '../../../core/app_export.dart';

/// This class is used in the [chooselang_item_widget] screen.
class ChooselangItemModel {
  ChooselangItemModel({
    this.results,
    this.id,
  }) {
    results = results ?? Rx(ChooseLangItemListModel());
    id = id ?? Rx("");
  }

  Rx<ChooseLangItemListModel>? results;

  Rx<String>? id;
}


/// This class is used in the [chooselang_item_widget] screen.
class ChooseLangItemListModel {
  ChooseLangItemListModel({
    this.lang,
    this.isSelected,
  }) {
    lang = lang ?? Rx("Results");
    isSelected = isSelected ?? Rx(false);
  }

  Rx<String>? lang;

  Rx<bool>? isSelected;
}
