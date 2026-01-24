/*Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions. */
void main() {
  Map<String, String?> environment = {"Environment": "prod", "AppName": null};
  String envName = environment["Environment"] ?? "development";
  String appName = environment["AppName"] ?? "MyApp";
  print("Environment:${envName.toUpperCase()}");
  print("App Name:${appName.toUpperCase()}");
  if (envName == "prod") {
    print("Prod ready");
  } else {
    print("Non-prod");
  }
}
