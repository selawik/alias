import 'package:alias/core/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:alias/core/injection.dart' as di;

class ResetUnfinishedGameDialog extends StatelessWidget {
  const ResetUnfinishedGameDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var router = di.locator.get<AppRouter>();

    return CupertinoAlertDialog(
      content: const Text(
        'Хотите начать новую игру? Прогресс по текущей игре будет стерт',
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () => router.pop(true),
          child: const Text("Да"),
        ),
        CupertinoDialogAction(
          onPressed: () => router.pop(false),
          child: const Text("Нет"),
        ),
      ],
    );
  }
}
