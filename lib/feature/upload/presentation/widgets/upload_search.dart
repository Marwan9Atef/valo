import 'package:flutter/material.dart';
import 'package:valo/core/theme/app_color.dart';

import '../../../../core/theme/search_delgate_theme.dart';

class UploadSearch extends SearchDelegate {
  @override
  String get searchFieldLabel => "Or search by keywords...";
  @override
  ThemeData appBarTheme(BuildContext context) {
    return SearchDelegateTheme.searchTheme;
  }
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () {
        query = '';
      }, icon: const Icon(Icons.clear),color: AppColor.white,)


    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back,color: AppColor.white,),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Scaffold(


    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Scaffold();
  }
  
  
  
}