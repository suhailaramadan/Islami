import 'package:flutter/material.dart';
import 'package:islami_splash/app_theme.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: AppTheme.lightPrimary,));
  }
}