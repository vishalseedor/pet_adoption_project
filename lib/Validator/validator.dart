// Validate Email

String validateFirstName(String firstname) {
  if (firstname.isEmpty) {
    return 'Password is required';
  }
  if (firstname.length < 25) {
    return 'Password must be at least 25 characters';
  }
  return "";
}
String validateLastName(String lastname) {
  if (lastname.isEmpty) {
    return 'Password is required';
  }
  if (lastname.length < 25) {
    return 'Password must be at least 25 characters';
  }
  return "";
}

String validateDob(String dob) {
  if (dob.isEmpty) {
    return 'Password is required';
  }
  if (dob.length < 10) {
    return 'Password must be at least 25 characters';
  }
  return "";
}










String validateEmail(String email) {
  if (email.isEmpty) {
    return 'Email is required';
  }
  if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email)) {
    return 'Please enter a valid email address';
  }
  return "";
}

// Validate Password
String validatePassword(String password) {
  if (password.isEmpty) {
    return 'Password is required';
  }
  if (password.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return "";
}
