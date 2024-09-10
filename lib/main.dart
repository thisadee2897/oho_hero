import 'package:oho_hero/config/routes/export.dart';

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});
  static String version = '0.0.1';
  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    GoRouter appRouter = ref.watch(appRouterProvider);
    final locale = ref.watch(localeProvider);
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      title: 'OHO HERO',
      theme: CustomThemes.mainTheme,
      locale: locale,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      localizationsDelegates: const [
        Trans.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Trans.delegate.supportedLocales,
      routerConfig: appRouter,
    );
  }
}

void switchLanguage(WidgetRef ref, Locale newLocale) {
  ref.read(localeProvider.notifier).state = newLocale;
}

final localeProvider = StateProvider<Locale>((ref) => Locale('en'));

final languageProvider = StateProvider<Locale>((ref) {
  final locale = ref.watch(localeProvider);
  return locale;
});
