import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:nutrimate/application/redux/actions/auth/check_sign_in_action.dart';
import 'package:nutrimate/application/redux/observers/custom_action_observer.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/initial_route_view_model.dart';
import 'package:nutrimate/domain/core/database_strings.dart';
import 'package:nutrimate/domain/core/value_objects/global_keys.dart';
import 'package:nutrimate/infrastructure/repository/database_state_persistor.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/router/router_generator.dart';
import 'package:nutrimate/presentation/router/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final NutriMateStateDatabase database = NutriMateStateDatabase(
    databaseName: localDatabaseName,
  );

  Store<AppState>? appStore;

  void setUpApp() async {
    // initialize the database
    await database.init();

    // read state from the database
    final AppState initialState = await database.readState();

    // if the initial state is empty[null], init a new database
    if (initialState == AppState.initial()) {
      await database.saveInitialState(initialState);
    }

    appStore = Store<AppState>(
      initialState: initialState,
      persistor: PersistorPrinterDecorator<AppState>(database),
      defaultDistinct: true,
      actionObservers: <ActionObserver<AppState>>[
        CustomActionOnbserver(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    setUpApp();

    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) async {
      globalNavigationKey.currentContext!.dispatch(CheckSignInAction());
    });
  }

  final NavigatorObserver navigatorObserver = NavigatorObserver();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: appStore ?? Store<AppState>(initialState: AppState.initial()),
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
            navigatorObservers: <NavigatorObserver>[
              navigatorObserver,
            ],
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
