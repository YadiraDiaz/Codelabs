import 'dart:async';

// Ejemplo: Ejecución dentro de funciones asíncronas
Future<void> printOrderMessage() async {
  print('Esperando el pedido del usuario...');
  var order = await fetchUserOrder();
  print('Tu pedido es: $order');
}

Future<String> fetchUserOrder() {
  // Imagina que esta función es más compleja y lenta.
  return Future.delayed(const Duration(seconds: 4), () => 'Latte Grande');
}

void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

// Parte 1: reportUserRole()
Future<String> reportUserRole() async {
  var role = await fetchRole();
  return "Rol del usuario: $role";
}

// Parte 2: reportLogins()
Future<String> reportLogins() async {
  var logins = await fetchLoginAmount();
  return "Número total de sesiones: $logins";
}

// Manejo de Errores
Future<void> printOrderMessageWithErrorHandling() async {
  try {
    print('Esperando el pedido del usuario...');
    var order = await fetchUserOrder();
    print(order);
  } catch (err) {
    print('Error detectado: $err');
  }
}

Future<void> handleErrorsInAsyncFunctions() async {
  try {
    await printOrderMessage();
  } catch (e) {
    print('Se produjo un error: $e');
  }
}

// Ejercicio: Practica con async y await
// Parte 1: addHello()
String addHello(String name) {
  return 'Hello $name';
}

// Parte 2: greetUser()
Future<String> greetUser() async {
  var username = await fetchUsername();
  return addHello(username);
}

// Parte 3: sayGoodbye()
Future<String> sayGoodbye() async {
  try {
    var result = await logoutUser();
    return '$result Gracias, hasta la próxima';
  } catch (e) {
    return 'Error al cerrar sesión. ¡Hasta luego!';
  }
}

// Simulación de operaciones asíncronas
Future<String> fetchRole() => Future.delayed(
      const Duration(milliseconds: 500),
      () => 'administrador',
    );

Future<int> fetchLoginAmount() => Future.delayed(
      const Duration(milliseconds: 500),
      () => 42,
    );

Future<String> fetchUsername() => Future.delayed(
      const Duration(milliseconds: 500),
      () => 'Jean',
    );

Future<String> logoutUser() => Future.delayed(
      const Duration(milliseconds: 500),
      () => 'Éxito',
    );

void main() async {
  // Ejemplo: Ejecución dentro de funciones asíncronas
  print('Ejemplo:');
  await handleErrorsInAsyncFunctions();
  print('');

  // Ejercicio: Practica con async y await
  print('Ejercicio:');
  print('Parte 1:');
  print(addHello('Jon')); // Salida esperada: 'Hello Jon'
  print('');

  print('Parte 2:');
  print(await greetUser()); // Salida esperada: 'Hello Jean'
  print('');

  print('Parte 3:');
  print(
      await sayGoodbye()); // Salida esperada: '<result> Gracias, hasta la próxima'
}
