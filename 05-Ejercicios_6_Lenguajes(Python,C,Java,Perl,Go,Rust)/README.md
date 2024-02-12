# Investigación lenguajes.

## Python

## C

## Java

**Tipado de datos**
Java es un lenguaje fuertemente tipado.

**Tipos de dato**
- byte: 8 bits, rango de -128 a 127.
- short: 16 bits, rango de -32,768 a 32,767.
- int: 32 bits, rango de -2^31 a 2^31 - 1.
- long: 64 bits, rango de -2^63 a 2^63 - 1.
- float: 32 bits.
- double: 64 bits.
- char: 16 bits Unicode.
- boolean: Verdadero o falso.

**Paradigma**
Orientado a objetos.

## Perl

## Go

## Rust



# Factorial

## Python

## C

## Java

```java
public static void calcularFactorial(int numero) {
    int resultado = 1;
    for (int i = 1; i <= numero; i++) {
        resultado *= i;
    }
    System.out.println("El factorial de " + numero + " es: " + resultado);
}
```

## Perl

## Go

## Rust


# Fibonacci

## Python

## C

## Java

```java
public static void calcularFibonacci(int numero) {    
    int aux1 = 0;
    int aux2 = 1;
    int resultado = 0;
        
    for (int i = 2; i <= numero; i++) {
        resultado = aux1 + aux2;
        aux1 = aux2;
        aux2 = resultado;
    }
    
    System.out.println("Sucesión de Fibonacci hasta el término " + numero + "es :" + resultado);   
    }
```

## Perl

## Go

## Rust



# Palindromo

## Python

## C

## Java
```java

public static boolean Palindromo(String palabra) {
    palabra = palabra.toLowerCase();
    
    for (int i = 0, j=palabra.length()-1 ; i < palabra.length()/2; i++, j--) {
        if (palabra.charAt(i) != palabra.charAt(j)) {
           return false;
        }
    }
    return true;
   }


```

## Perl

## Go

## Rust



