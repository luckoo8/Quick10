import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : ALoginWebWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : ALoginWebWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: 'Search',
          path: '/search',
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: 'Course',
          path: '/course',
          builder: (context, params) => CourseWidget(),
        ),
        FFRoute(
          name: 'Reviews',
          path: '/reviews',
          builder: (context, params) => ReviewsWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'Filter',
          path: '/filter',
          builder: (context, params) => FilterWidget(),
        ),
        FFRoute(
          name: 'Checkout',
          path: '/checkout',
          builder: (context, params) => CheckoutWidget(),
        ),
        FFRoute(
          name: 'MyPrograms',
          path: '/myPrograms',
          builder: (context, params) => MyProgramsWidget(),
        ),
        FFRoute(
          name: 'Discover',
          path: '/discover',
          builder: (context, params) => DiscoverWidget(),
        ),
        FFRoute(
          name: 'Bookmarks',
          path: '/bookmarks',
          builder: (context, params) => BookmarksWidget(),
        ),
        FFRoute(
          name: 'message',
          path: '/message',
          builder: (context, params) => MessageWidget(),
        ),
        FFRoute(
          name: 'audioChatDemo',
          path: '/audioChatDemo',
          builder: (context, params) => AudioChatDemoWidget(),
        ),
        FFRoute(
          name: 'aProjectNew',
          path: '/aProjectNew',
          asyncParams: {
            'projectNew': getDoc(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => AProjectNewWidget(
            projectNewUserRef: params.getParam('projectNewUserRef',
                ParamType.DocumentReference, false, ['users']),
            projectNewRef: params.getParam('projectNewRef',
                ParamType.DocumentReference, false, ['project']),
            projectNew: params.getParam('projectNew', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'auth_2_Create',
          path: '/auth2Create',
          builder: (context, params) => Auth2CreateWidget(),
        ),
        FFRoute(
          name: 'aLoginWeb',
          path: '/LoginWeb',
          builder: (context, params) => ALoginWebWidget(),
        ),
        FFRoute(
          name: 'auth_2_ForgotPassword',
          path: '/auth2ForgotPassword',
          builder: (context, params) => Auth2ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'acreateProfile',
          path: '/acreateProfile',
          builder: (context, params) => AcreateProfileWidget(
            createUserProfile: params.getParam('createUserProfile',
                ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'auth_2_Profile',
          path: '/auth2Profile',
          builder: (context, params) => Auth2ProfileWidget(),
        ),
        FFRoute(
          name: 'aeditHelperProfiles',
          path: '/aeditHelperProfiles',
          builder: (context, params) => AeditHelperProfilesWidget(
            editHelperProfilesRef: params.getParam('editHelperProfilesRef',
                ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'ahelperProfile',
          path: '/ahelperProfile',
          asyncParams: {
            'helperProfile': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AhelperProfileWidget(
              helperProfileRef: params.getParam('helperProfileRef',
                  ParamType.DocumentReference, false, ['users']),
              helperProject: params.getParam('helperProject',
                  ParamType.DocumentReference, false, ['project']),
              helperProfile:
                  params.getParam('helperProfile', ParamType.Document),
            ),
          ),
        ),
        FFRoute(
          name: 'ahelperList',
          path: '/ahelperList',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AhelperListWidget(
              listHelper: params.getParam(
                  'listHelper', ParamType.DocumentReference, false, ['users']),
            ),
          ),
        ),
        FFRoute(
          name: 'amypageUser',
          path: '/amypageUser',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'amypageUser')
              : NavBarPage(
                  initialPage: 'amypageUser',
                  page: AmypageUserWidget(
                    mypageUser: params.getParam('mypageUser',
                        ParamType.DocumentReference, false, ['users']),
                  ),
                ),
        ),
        FFRoute(
          name: 'review',
          path: '/review',
          builder: (context, params) => ReviewWidget(),
        ),
        FFRoute(
          name: 'amypageHelper',
          path: '/amypageHelper',
          asyncParams: {
            'hmypageProject': getDoc(['project'], ProjectRecord.fromSnapshot),
            'hmypageUsers': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'amypageHelper')
              : NavBarPage(
                  initialPage: 'amypageHelper',
                  page: AmypageHelperWidget(
                    hmypageUserRef: params.getParam('hmypageUserRef',
                        ParamType.DocumentReference, false, ['users']),
                    hmypageProjectRef: params.getParam('hmypageProjectRef',
                        ParamType.DocumentReference, false, ['project']),
                    hmypageProject:
                        params.getParam('hmypageProject', ParamType.Document),
                    applyhelper: params.getParam(
                        'applyhelper',
                        ParamType.DocumentReference,
                        false,
                        ['project', 'apply']),
                    hmypageUsers:
                        params.getParam('hmypageUsers', ParamType.Document),
                  ),
                ),
        ),
        FFRoute(
          name: 'applyList',
          path: '/applyList',
          asyncParams: {
            'applyList': getDoc(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => ApplyListWidget(
            applyList: params.getParam('applyList', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'searches',
          path: '/searches',
          builder: (context, params) => SearchesWidget(),
        ),
        FFRoute(
          name: 'asetting',
          path: '/asetting',
          builder: (context, params) => AsettingWidget(),
        ),
        FFRoute(
          name: 'edit',
          path: '/edit',
          builder: (context, params) => EditWidget(),
        ),
        FFRoute(
          name: 'aeditUserProfiles',
          path: '/aeditUserProfiles',
          builder: (context, params) => AeditUserProfilesWidget(
            editUserProfilesRef: params.getParam('editUserProfilesRef',
                ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'ProjectListStart',
          path: '/projectListStart',
          asyncParams: {
            'projectList': getDoc(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => ProjectListStartWidget(
            projectList: params.getParam('projectList', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'ProjectListTest',
          path: '/projectListTest',
          asyncParams: {
            'projectListsingle':
                getDocList(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => ProjectListTestWidget(
            projectList: params.getParam(
                'projectList', ParamType.DocumentReference, false, ['project']),
            projectListsingle: params.getParam<ProjectRecord>(
                'projectListsingle', ParamType.Document, true),
          ),
        ),
        FFRoute(
          name: 'home',
          path: '/Home',
          asyncParams: {
            'projectDocLsit':
                getDocList(['project'], ProjectRecord.fromSnapshot),
            'projectDoc': getDoc(['project'], ProjectRecord.fromSnapshot),
            'user': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'home')
              : NavBarPage(
                  initialPage: 'home',
                  page: HomeWidget(
                    projectRef: params.getParam('projectRef',
                        ParamType.DocumentReference, false, ['project']),
                    projectDocLsit: params.getParam<ProjectRecord>(
                        'projectDocLsit', ParamType.Document, true),
                    projectDoc:
                        params.getParam('projectDoc', ParamType.Document),
                    projectRefList: params.getParam<DocumentReference>(
                        'projectRefList',
                        ParamType.DocumentReference,
                        true,
                        ['project']),
                    userRef: params.getParam('userRef',
                        ParamType.DocumentReference, false, ['users']),
                    user: params.getParam('user', ParamType.Document),
                  ),
                ),
        ),
        FFRoute(
          name: 'ProjectDetaiRef',
          path: '/projectDetaiRef',
          asyncParams: {
            'projectDetail': getDoc(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => ProjectDetaiRefWidget(
            projectDetail: params.getParam('projectDetail', ParamType.Document),
            projectDetailUser: params.getParam('projectDetailUser',
                ParamType.DocumentReference, false, ['users']),
            projectDetailRef: params.getParam('projectDetailRef',
                ParamType.DocumentReference, false, ['project']),
          ),
        ),
        FFRoute(
          name: 'aProjectDetail',
          path: '/aProjectDetail',
          asyncParams: {
            'projectDetail': getDoc(['project'], ProjectRecord.fromSnapshot),
            'projectDetailUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => AProjectDetailWidget(
            projectDetail: params.getParam('projectDetail', ParamType.Document),
            projectDetailUserRef: params.getParam('projectDetailUserRef',
                ParamType.DocumentReference, false, ['users']),
            projectDetailRef: params.getParam('projectDetailRef',
                ParamType.DocumentReference, false, ['project']),
            applyHelper: params.getParam('applyHelper',
                ParamType.DocumentReference, false, ['project', 'apply']),
            projectDetailUser:
                params.getParam('projectDetailUser', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'ProjectDetailCopy',
          path: '/projectDetailCopy',
          asyncParams: {
            'projectDetail': getDoc(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => ProjectDetailCopyWidget(
            projectDetail: params.getParam('projectDetail', ParamType.Document),
            projectDetailUser: params.getParam('projectDetailUser',
                ParamType.DocumentReference, false, ['users']),
            projectDetailRef: params.getParam('projectDetailRef',
                ParamType.DocumentReference, false, ['project']),
          ),
        ),
        FFRoute(
          name: 'ProjectListCopy',
          path: '/projectListCopy',
          asyncParams: {
            'projectDocLsit':
                getDocList(['project'], ProjectRecord.fromSnapshot),
            'projectDoc': getDoc(['project'], ProjectRecord.fromSnapshot),
          },
          builder: (context, params) => ProjectListCopyWidget(
            projectRef: params.getParam(
                'projectRef', ParamType.DocumentReference, false, ['project']),
            projectDocLsit: params.getParam<ProjectRecord>(
                'projectDocLsit', ParamType.Document, true),
            projectDoc: params.getParam('projectDoc', ParamType.Document),
            projectRefList: params.getParam<DocumentReference>('projectRefList',
                ParamType.DocumentReference, true, ['project']),
            userRef: params.getParam(
                'userRef', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'favorites',
          path: '/favorites',
          asyncParams: {
            'users': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => FavoritesWidget(
            user: params.getParam(
                'user', ParamType.DocumentReference, false, ['users']),
            users: params.getParam('users', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'mypageHelperCopy',
          path: '/mypageHelperCopy',
          asyncParams: {
            'hmypageProject': getDoc(['project'], ProjectRecord.fromSnapshot),
            'hmypageUsers': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => MypageHelperCopyWidget(
            hmypageUserRef: params.getParam('hmypageUserRef',
                ParamType.DocumentReference, false, ['users']),
            hmypageProjectRef: params.getParam('hmypageProjectRef',
                ParamType.DocumentReference, false, ['project']),
            hmypageProject:
                params.getParam('hmypageProject', ParamType.Document),
            applyhelper: params.getParam('applyhelper',
                ParamType.DocumentReference, false, ['project', 'apply']),
            hmypageUsers: params.getParam('hmypageUsers', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'List08ProductList',
          path: '/list08ProductList',
          builder: (context, params) => List08ProductListWidget(),
        ),
        FFRoute(
          name: 'profile3',
          path: '/profile3',
          builder: (context, params) => Profile3Widget(),
        ),
        FFRoute(
          name: 'aeditUserProfilesCopy',
          path: '/aeditUserProfilesCopy',
          builder: (context, params) => AeditUserProfilesCopyWidget(
            editUserProfilesRef: params.getParam('editUserProfilesRef',
                ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'ahelperProfileCopy',
          path: '/ahelperProfileCopy',
          asyncParams: {
            'helperProfile': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AhelperProfileCopyWidget(
              helperProfileRef: params.getParam('helperProfileRef',
                  ParamType.DocumentReference, false, ['users']),
              helperProject: params.getParam('helperProject',
                  ParamType.DocumentReference, false, ['project']),
              helperProfile:
                  params.getParam('helperProfile', ParamType.Document),
            ),
          ),
        ),
        FFRoute(
          name: 'agoraTest',
          path: '/agoraTest',
          builder: (context, params) => AgoraTestWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/LoginWeb';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
