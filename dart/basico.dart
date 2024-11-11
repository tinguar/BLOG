/**
1. Introducción y Configuración
Introducción a Dart: Breve introducción a lo que es Dart y su propósito.
2. Sintaxis Básica (10 minutos)
Variables y Tipos de Datos:
int, double, String, bool
Uso de var, final, const
3. Operadores Básicos
Operadores Aritméticos: +, -, *, /
Operadores de Comparación: ==, !=, >, <, >=, <=
4. Control de Flujo (15 minutos)
Condicionales: if, else, else if
Ciclos: for, while
5. Funciones (10 minutos)
Definición de Funciones:
Funciones con y sin retorno
Parámetros opcionales y por defecto
6. Listas y Mapas (10 minutos)
Listas:
Declaración, agregar y acceder a elementos
Mapas:
Claves y valores
7. Clases y Objetos (POO Básica) (10 minutos)
Definición de Clases:
Constructores
Atributos y Métodos
 */

main() {
  // 1. Sintaxis y Variables
  var nombre = "Daniela";
  final int edad = 25;
  const double pi = 3.1416;
  print("Mi nombre es $nombre, tengo $edad años y el valor de pi es $pi");

  // 2. Operadores Básicos
  int a = 10;
  int b = 20;
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // 3. Control de Flujo
  int numero = 10;
  if (numero % 2 == 0) {
    print("El número es par");
  } else {
    print("El número es impar");
  }

  for (int i = 1; i <= 5; i++) {
    print("Iteración $i");
  }

  // 4. Funciones
  print(sumar(5, 3)); // 8
  saludar("Lilibeth"); // Hola, Lilibeth!
  saludar(); // Hola, Amigo!

  // 5. Listas y Mapas
  List<String> frutas = ["Manzana", "Banana", "Pera"];
  frutas.add("Naranja");
  print(frutas[0]); // Manzana

  List<int> numeros = [1, 2, 3, 4, 5];
  print(numeros[0]); // Imprime: 1
  numeros[2] = 10;
  print(numeros); // Imprime: [1, 2, 10, 4, 5]

  Map<String, int> edades = {
    "Graciela": 25,
    "Juan": 30,
  };
  print(edades["Graciela"]); // 25

  // 6. Clases y Objetos
  var persona = Persona("Lilibeth", 28); // instancia
  persona.saludar(); // Llamada al método saludar
}

// 4. Funciones - Ejemplos
int sumar(int a, int b) {
  return a + b;
}

void saludar([String nombre = "Amigo"]) {
  print("Hola, $nombre!");
}

// 6. Clases y Objetos
class Persona {
  String nombre; // atributo
  int edad;

  Persona(this.nombre, this.edad); // contructura

  void saludar() {
    // metodo
    print("Hola, mi nombre es $nombre y tengo $edad años.");
  }
}