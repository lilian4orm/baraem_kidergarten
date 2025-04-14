import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

extension PagingFetchPageExtension<T> on PagingController<int, T> {
  Future<void> appendItems(int totalItems, List<T> items) async {
    // NOTE: add items.length because the first requset itemList is null which is will not be isLastPage true and will be send second requst
    final isLastPage = (itemList?.length ?? items.length) >= totalItems;
    if (isLastPage) {
      appendLastPage(items);
    } else {
      appendPage(items, nextPageKey! + 1);
    }
  }
}
