import '../../../core/app_export.dart';
import 'chooselang_item_model.dart';

/// This class defines the variables used in the [chooselang_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooselangModel {
  Rx<List<ChooselangItemModel>> chooselangItemList =
      Rx([
        ChooselangItemModel(results: ChooseLangItemListModel(lang: Rx("German")).obs),
        ChooselangItemModel(results: ChooseLangItemListModel(lang: Rx("French")).obs),
        ChooselangItemModel(results: ChooseLangItemListModel(lang: Rx("English")).obs),
        ChooselangItemModel(results: ChooseLangItemListModel(lang: Rx("Hindi")).obs),
        ChooselangItemModel(results: ChooseLangItemListModel(lang: Rx("Punjabi")).obs),
        ChooselangItemModel(results: ChooseLangItemListModel(lang: Rx("Russian")).obs),
      ]);
}
