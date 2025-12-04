import 'package:flutter/material.dart';
import 'package:valo/feature/upload/presentation/widgets/search_item.dart';
import 'package:valo/feature/upload/presentation/widgets/upload_search.dart';

class BeforeSearch extends StatelessWidget {
  const BeforeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showSearch(
            context: context,
            delegate: UploadSearch()
        );
      },
      child:const SearchItem() ,
    );
  }
}