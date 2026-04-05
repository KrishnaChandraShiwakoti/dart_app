void main() {
  // Create map
  Map<String, dynamic> person = {
    'name': 'Krishna',
    'address': 'Kathmandu',
    'age': 22,
    'country': 'Nepal',
  };

  // Update country
  person['country'] = 'Canada';

  // Print all keys and values
  person.forEach((key, value) {
    print('$key: $value');
  });
}
