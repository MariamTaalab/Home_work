/*Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length */
void main() {
  Map<String, String?> user = {"name": "Ali", "phone": null};
  String phone = user["phone"] ?? " No phone number provided";
  print("phone: $phone");
  user["phone"] = '123456789';
  int? phoneLength = user['phone']?.length;
  print("Update phone length:$phoneLength");
}
