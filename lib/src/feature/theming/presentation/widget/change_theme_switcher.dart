import 'package:alias/src/feature/theming/presentation/bloc/theme_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeSwitcher extends StatelessWidget {
  const ChangeThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final bloc = context.read<ThemeBloc>();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Темная тема'),
            CupertinoSwitch(
              value: state.isDarkThemeEnabled,
              onChanged: (value) => bloc.add(
                const ThemeEvent.themeSwitched(),
              ),
            )
          ],
        );
      },
    );
  }
}
