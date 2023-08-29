import 'package:alias/src/core/injection.dart' as di;
import 'package:alias/src/core/router/app_router.dart';
import 'package:flutter/cupertino.dart';

class ResetUnfinishedGameDialog extends StatelessWidget {
  const ResetUnfinishedGameDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final router = di.locator.get<AppRouter>();

    return CupertinoAlertDialog(
      content: const Text(
        'Хотите начать новую игру? Прогресс по текущей игре будет стерт',
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () => router.pop(true),
          child: const Text('Да'),
        ),
        CupertinoDialogAction(
          onPressed: () => router.pop(false),
          child: const Text('Нет'),
        ),
      ],
    );
  }
}
