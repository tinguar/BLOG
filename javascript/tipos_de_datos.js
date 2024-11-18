
// Guía Completa de Tipos de Datos en JavaScript: Ejemplos Prácticos

// 1. Ejemplo de Number
let entero = 42;
let decimal = 3.14;
console.log("Number:", entero, decimal);

// 2. Ejemplo de String
let saludo = "Hola, mundo";
let nombre = "Juan";
console.log("String:", saludo);
console.log(`Interpolación: Hola, ${nombre}`);

// 3. Ejemplo de Boolean
let esMayor = 5 > 3;
console.log("Boolean:", esMayor);

// 4. Ejemplo de Undefined
let sinDefinir;
console.log("Undefined:", sinDefinir);

// 5. Ejemplo de Null
let sinValor = null;
console.log("Null:", sinValor);

// 6. Ejemplo de Symbol
let id = Symbol("id");
console.log("Symbol:", id);

// 7. Ejemplo de BigInt
let numeroGrande = 12345678901234567890n;
console.log("BigInt:", numeroGrande);

// 8. Ejemplo de Object
let usuario = { nombre: "Ana", edad: 30 };
console.log("Object:", usuario);

// 9. Ejemplo de Array
let colores = ["rojo", "verde", "azul"];
console.log("Array:", colores);

// 10. Ejemplo de Function
function saludar(nombre) {
    return `Hola, ${nombre}`;
}
console.log("Function:", saludar("Pedro"));

// 11. Ejemplo de Date
let hoy = new Date();
console.log("Date:", hoy);

// 12. Ejemplo de Map
let mapa = new Map();
mapa.set("clave", "valor");
console.log("Map:", mapa);

// 13. Ejemplo de Set
let conjunto = new Set([1, 2, 2, 3]);
console.log("Set:", conjunto);
