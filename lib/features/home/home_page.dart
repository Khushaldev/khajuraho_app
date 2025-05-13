import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khajuraho/core/app_config/cubit/app_config_cubit.dart';
import 'package:khajuraho/core/services/firebase/firebase_service.dart';
import 'package:khajuraho/core/services/local_storage/local_storage_key.dart';
import 'package:khajuraho/core/utils/extensions/theme_extension.dart';
import 'package:khajuraho/di/di_container.dart';
import 'package:khajuraho/features/home/widgets/spent_amount_card.dart';
import 'package:khajuraho/features/home/widgets/time_period_chips.dart';
import 'package:khajuraho/shared/widgets/spacing.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          FirebaseService.logout();
          di.storage.put(LSKey.user, null);
          di.storage.put(LSKey.tokens, null);
          // _openAddExpenseBottomSheet(context);
        },
        child: Text('Add Expense'),
      ),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Smart Budget',
          style: context.theme.textTheme.headlineSmall?.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              context.theme.brightness == Brightness.light //
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              context.read<AppConfigCubit>().toggleTheme();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          verticalMargin24,
          TimePeriodChips(),
          verticalMargin24,
          SpentAmountCard(),
        ],
      ),
    );
  }
}
