/*Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'. */
void main() {
  Map<String, String> countris = {
    "EG": "Egypt",
    "US": "United States",
    "SA": "Saudi Arabia",
  };
  print(countris['EG']);
  countris["QA"] = "Qater";
  print(countris.length);
  if (countris.containsKey("JO")) {
    print(" Jordan exist");
  } else {
    print("Jordan missing");
  }
}
