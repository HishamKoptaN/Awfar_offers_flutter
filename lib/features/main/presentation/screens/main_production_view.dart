import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/app_layout.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../settings/presentation/views/settings_view.dart';
import '../bloc/main_production_bloc.dart';
import '../bloc/main_production_event.dart';
import '../bloc/main_production_state.dart';

class MainProductionView extends StatelessWidget {
  const MainProductionView({
    super.key,
  });
  @override
  Widget build(
    context,
  ) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<MainProductionBloc>()
          ..add(
            const MainProductionEvent.getSettingsEvent(),
          ),
        child: AppLayout(
          route: "",
          showAppBar: false,
          body: BlocConsumer<MainProductionBloc, MainProductionState>(
            listener: (context, state) async {
              state.mapOrNull(
                logedIn: (notVerify) {
                  Navigator.pushNamed(
                    context,
                    SettingsView.routeName,
                  );
                },
              );
            },
            builder: (context, state) {
              return const CustomCircularProgress();
            },
          ),
        ),
      ),
    );
  }
}
