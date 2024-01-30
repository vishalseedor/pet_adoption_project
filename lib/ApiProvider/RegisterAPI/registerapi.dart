import 'package:http/http.dart' as http;

void registerAdopter() async {
  final url = 'http://campus.sicsglobal.co.in/Project/pet_shop/api/adopter_registration.php';

  Map<String, String> body = {
    'firstname': 'John',
    'lastname': 'Doe',
    'dob': '1990-01-01',
    'phone': '1234567890',
    'email': 'john.doe@example.com',
    'password': 'securepassword',
    'address': '123 Main Street',
    'gender': 'male',
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      body: body,
    );

    if (response.statusCode == 200) {
      print('Registration successful');
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}