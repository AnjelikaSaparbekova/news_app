import 'package:flutter/material.dart';

class NewsDetailDivider extends StatelessWidget {
  const NewsDetailDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 20,
      endIndent: 20,
      thickness: 3,
    );
  }
}
