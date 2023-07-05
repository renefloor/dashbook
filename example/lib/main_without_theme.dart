import 'package:dashbook/dashbook.dart';
import 'package:example/main.dart';
import 'package:example/stories.dart';
import 'package:example/text_story.dart';
import 'package:flutter/material.dart';

void main() {
  final dashbook = MultiBrandBookBuilder(
    brands: [
      DashbookBrand(
        name: 'love',
        themeSettings: getThemes(TestBrand.love),
        icon: const Icon(Icons.favorite),
      ),
      DashbookBrand(
        name: 'hate',
        themeSettings: getThemes(TestBrand.hate),
        icon: const Icon(Icons.heart_broken_outlined),
      ),
    ],
  );

  addTextStories(dashbook);
  addStories(dashbook);

  runApp(dashbook.build());
}
