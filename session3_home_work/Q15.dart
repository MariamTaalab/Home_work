/*Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed. */
void main() {
  List<String> paths = ["/", "/products", "/profile", "/other"];
  Map<String, String> products = {"1": "PC", "2": "phone", "3": "Headphones"};
  Map<String, String> profiles = {
    "user1": "Ali",
    "User2": "Ahmed",
    "User3": "Sara",
  };
  String path = "/products";
  print("visiting :$path");
  switch (path) {
    case "/":
      print("Welcome to the home page");
      break;
    case "/products":
      print("Products page");
      break;
    case "/profile":
      print("Profile page");
      String? username =  profiles['user1'];
      if(username != null){
        print("username:$username");
      }else{
        print("Profile not found");
      }
      break;
      default:
      print("Page not found");
      
  }
}
