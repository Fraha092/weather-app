import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page/search_page_widgets/city_form_field.dart';

class SearchPageContentSimplified extends StatelessWidget {
  const SearchPageContentSimplified({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const AutoSizeText(
            'Search Weather',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 80),
            minFontSize: 20,
            maxLines: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          CityFormField(
            searchController: searchController,
            textFontSize: 30,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
