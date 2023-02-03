import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:alias/core/router/app_router.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var router = di.locator.get<AppRouter>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset(AssetsCatalog.icLogo)),
          ElevatedButton(
            onPressed: () => router.push(const CategoryPageRoute()),
            child: const Text('Новая игра'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => router.push(const SettingsPageRoute()),
            child: const Text('Настройки'),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}
