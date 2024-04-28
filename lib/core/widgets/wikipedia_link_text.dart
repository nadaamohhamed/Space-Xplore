import 'package:flutter/material.dart';
import 'package:space_app/core/widgets/web_view.dart';

import '../theming/styles.dart';

class WikipediaLinkText extends StatelessWidget {
  const WikipediaLinkText({
    super.key,
    required this.wikipediaUrl,
    required this.text,
  });

  final String wikipediaUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WebView(webViewUrl: wikipediaUrl),
          ),
        );
      },
      child: Text(
        text,
        style: TextStyles.font11BlueMedium,
      ),
    );
  }
}
