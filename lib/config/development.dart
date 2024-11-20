class AppConfig {
  final String appName;
  final String baseUrl;

  AppConfig({required this.appName, required this.baseUrl});
}

final developmentConfig = AppConfig(
  appName: "MyApp (Development)",
  baseUrl: "https://dev.api.myapp.com",
);
