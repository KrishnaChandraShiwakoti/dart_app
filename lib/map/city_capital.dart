void main(List<String> args) {
  Map cityCountry = {
    "Nepal": "Kathmandu",
    "India": "New Delhi",
    "USA": "Washington",
    "Uk": "London",
  };
  print(cityCountry);

  //Or
  Map cityCountry2 = Map<String, String>();
  cityCountry2["Nepal"] = "Kathmandu";
  cityCountry2["USA"] = "Washington";
  cityCountry2["Uk"] = "London";

  print(cityCountry2);
  print(cityCountry.keys);
  print(cityCountry.values);

  String searchValue = "Kathmandu";

  print("$searchValue is in ${cityCountry[searchValue]}");
}
