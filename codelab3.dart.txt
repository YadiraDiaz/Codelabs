class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'EmailAddress{address: $address}';
}

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((string) => EmailAddress(string));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}

bool isValidEmailAddress(EmailAddress email) {
  return email.address.contains('@');
}

void main() {
  // Ejemplo: Usando un bucle for-in
  const iterable = ['Salad', 'Popcorn', 'Toast'];
  print('Using for-in loop:');
  for (final element in iterable) {
    print(element);
  }

  // Ejemplo: Usando first y last
  Iterable<String> snacks = const ['Salad', 'Popcorn', 'Toast'];
  print('\nUsing first and last:');
  print('The first element is ${snacks.first}');
  print('The last element is ${snacks.last}');

  // Ejemplo: Usando firstWhere()
  bool predicate(String item) {
    return item.length > 5;
  }

  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

  // Encontrar usando una expresión simple
  var foundItem1 = items.firstWhere((item) => item.length > 5);
  print('\nUsing firstWhere():');
  print('Found item 1: $foundItem1');

  // Usar un bloque de función
  var foundItem2 = items.firstWhere((item) {
    return item.length > 5;
  });
  print('Found item 2: $foundItem2');

  // Pasar una referencia de función
  var foundItem3 = items.firstWhere(predicate);
  print('Found item 3: $foundItem3');

  // Usar una función orElse en caso de que no se encuentre ningún valor
  var foundItem4 = items.firstWhere(
    (item) => item.length > 10,
    orElse: () => 'None!',
  );
  print('Found item 4: $foundItem4');

  // Ejemplo: Filtrando elementos de un Iterable
  print('\nFiltering elements with where():');
  var filteredItems = items.where((item) => item.length > 5);
  for (var item in filteredItems) {
    print(item);
  }

  // Ejemplo: Mapeando los elementos de un Iterable
  print('\nMapping elements with map():');
  var mappedItems = items.map((item) => item.length);
  for (var length in mappedItems) {
    print(length);
  }

  // Ejemplo: Utilizando las funciones que implementamos
  print('\nUsing our implemented functions:');
  const input = [
    'ali@gmail.com',
    'bobgmail.com',
    'cal@gmail.com',
  ];

  const correctInput = ['dash@gmail.com', 'sparky@gmail.com'];

  final Iterable<EmailAddress> emails = parseEmailAddresses(input);
  final Iterable<EmailAddress> correctEmails =
      parseEmailAddresses(correctInput);

  print('Parsed emails: $emails');
  print('Parsed correct emails: $correctEmails');

  final invalidEmails = anyInvalidEmailAddress(emails);
  final validEmails = validEmailAddresses(emails);

  print('Any invalid emails? $invalidEmails');
  print('Valid emails: $validEmails');
}
