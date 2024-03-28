import '../../../core/app_export.dart';

/// This class is used in the [chooselang_item_widget] screen.
class ChooselangItemModel {
  ChooselangItemModel({
    this.results,
    this.id,
  }) {
    results = results ?? Rx("Results");
    id = id ?? Rx("");
  }

  Rx<String>? results;

  Rx<String>? id;
}
