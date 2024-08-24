import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/utils/constance.dart';
import 'package:news_app/app/features/home/controller/home_controller.dart';
import 'package:news_app/app/features/home/view/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Obx(
          () => controller.isSearching.isTrue
              ? buildSearchField()
              : const Text(
                  'Good News',
                  style: TextStyle(
                      fontFamily: 'Matemasie', fontWeight: FontWeight.w100),
                ),
        ),
        leading: IconButton(
          icon: Obx(
            () => Icon(
              controller.isSearching.isTrue
                  ? CupertinoIcons.xmark
                  : CupertinoIcons.search,
            ),
          ),
          onPressed: () {
            controller.isSearching.isTrue
                ? controller.stopSearch()
                : controller.startSearch();
          },
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Obx(
            () => controller.isSearching.isFalse
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.info,
                    ))
                : const SizedBox.shrink(),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: Obx(() =>
          controller.isSearching.isTrue ? const SearchResults() : const HistoryWidget()),
    );
  }
}

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Search Results',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              Text(
                '0 Resuls',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Recently Viewed',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  'Manage',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
