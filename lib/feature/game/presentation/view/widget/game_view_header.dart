import 'package:alias/core/constants/app_colors.dart';
import 'package:alias/core/constants/assets_catalog.dart';
import 'package:alias/core/router/app_router.dart';
import 'package:alias/feature/game/presentation/view/widget/game_timer.dart';
import 'package:flutter/material.dart';
import 'package:alias/core/injection.dart' as di;

class GameHeader extends StatelessWidget {
  const GameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => di.locator.get<AppRouter>().pop(),
            child: Image.asset(
              AssetsCatalog.icPause,
              color: AppColors.buttonColor,
            ),
          ),
          const Expanded(child: GameTimer()),
        ],
      ),
    );
  }
}
