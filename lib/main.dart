import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:nutrimate/application/redux/actions/auth/check_sign_in_action.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/initial_route_view_model.dart';
import 'package:nutrimate/domain/core/value_objects/global_keys.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/router/router_generator.dart';
import 'package:nutrimate/presentation/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Store<AppState> appStore = Store<AppState>(
    initialState: AppState.initial(),
  );

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) async {
      globalNavigationKey.currentContext!.dispatch(CheckSignInAction());
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: appStore,
      child: StoreConnector<AppState, InitialRouteViewModel>(
        converter: (Store<AppState> store) =>
            InitialRouteViewModel.fromStore(store.state),
        builder: (BuildContext context, InitialRouteViewModel vm) {
          final String initialRoute = vm.initialRoute ?? Routes.onboardingIntro;

          return MaterialApp(
            title: 'NutriMate',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.getTheme(),
            onGenerateRoute: RouteGenerator.generateRoute,
            initialRoute: initialRoute,
            navigatorKey: globalNavigationKey,
            builder: (BuildContext context, Widget? child) {
              return UserExceptionDialog<AppState>(
                child: child!,
              );
            },
          );
        },
      ),
    );
  }
}
