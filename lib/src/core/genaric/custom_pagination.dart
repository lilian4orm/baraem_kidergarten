import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:super_baraem_kidergarten/src/core/genaric/error_page.dart';

class CustomPagination<T> extends StatelessWidget {
  const CustomPagination({
    super.key,
    required this.pagingController,
    required this.itemBuilder,
    this.titleFirstPageError,
    this.titleBuildNewPageError,
    this.titleBuildNoItemsFound,
    this.titleBuildNoMoreItems,
  });
  final PagingController<int, T> pagingController;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final String? titleFirstPageError;
  final String? titleBuildNewPageError;
  final String? titleBuildNoItemsFound;
  final String? titleBuildNoMoreItems;
  @override
  Widget build(BuildContext context) {
    return PagedListView<int, T>(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<T>(
        firstPageErrorIndicatorBuilder:
            (context) => buildFirstPageErrorIndicator(),
        newPageErrorIndicatorBuilder: (context) => buildNewPageErrorIndicator(),
        firstPageProgressIndicatorBuilder:
            (context) => buildFirstPageProgressIndicator(),
        newPageProgressIndicatorBuilder:
            (context) => buildNewPageProgressIndicator(),
        noItemsFoundIndicatorBuilder: (context) => buildNoItemsFoundIndicator(),
        // noMoreItemsIndicatorBuilder: (context) => buildNoMoreItemsIndicator(),
        itemBuilder: itemBuilder,
      ),
    );
  }

  Widget buildFirstPageErrorIndicator() {
    return Center(
      child: ErrorPage(
        title:
            titleFirstPageError ?? "حدثت مشكلة. يرجى المحاولة مرة أخرى لاحقاً.",
        onPressedRetry: () {
          pagingController.retryLastFailedRequest();
        },
      ),
    );
  }

  Widget buildNewPageErrorIndicator() {
    return InkWell(
      onTap: () {
        pagingController.retryLastFailedRequest();
      },
      child: SizedBox(
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              titleBuildNewPageError ??
                  "لقد حدث خطأ ما، يرجى المحاولة مرة أخرى",
              style: const TextStyle(fontSize: 14),
            ),
            const Icon(Icons.refresh),
          ],
        ),
      ),
    );
  }

  Widget buildFirstPageProgressIndicator() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget buildNewPageProgressIndicator() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildNoItemsFoundIndicator() {
    return SizedBox(
      height: 50,
      child: Center(
        child: Text(
          titleBuildNoItemsFound ?? 'لم يتم العثور على أي عناصر',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }

  Widget buildNoMoreItemsIndicator() {
    return SizedBox(
      height: 50,
      child: Center(
        child: Text(
          titleBuildNoMoreItems ?? 'لا توجد عناصر أخرى متاحة',
          style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
        ),
      ),
    );
  }
}
