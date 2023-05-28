import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page/search_page_widgets/search_page_content_regular.dart';
import 'package:weather_app/pages/search_page/search_page_widgets/search_page_content_simplified.dart';
import 'package:weather_app/pages/settings_page/settings_page.dart';
import 'package:weather_app/services/shared_prefs.dart';

class SearchPage extends StatefulWidget {
  SearchPage({
    super.key,
    required this.isSimplified,
  });

  bool isSimplified;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffeeeeee),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 30),
              onPressed: () {
                settingsButtonAction(context);
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 40,
              ),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (BuildContext, BoxConstraints) {
            if (widget.isSimplified) {
              return SearchPageContentSimplified(
                searchController: searchController,
              );
            } else {
              return SearchPageContentRegular(
                searchController: searchController,
              );
            }
          },
        ),
      ),
    );
  }

  void settingsButtonAction(BuildContext context) {
    Navigator.of(context)
        .push(
          MaterialPageRoute(
            builder: (_) => SettingsPage(
              isSimplified: widget.isSimplified,
            ),
          ),
        )
        .then(
          (value) => {refreshPage()},
        );
  }

  refreshPage() {
    widget.isSimplified = SharedPrefs.getIsSimplified() ?? false;
    setState(() {});
  }
}
