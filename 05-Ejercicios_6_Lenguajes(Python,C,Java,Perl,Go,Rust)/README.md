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
```python
def factorial(n):
    resultado = 1
    for i in range(1, n + 1):
        resultado *= i
    print("El factorial de", n, "es:", resultado)
```
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
```perl
```

## Go
```go
```

## Rust
```rust
fn factorial(n: u64) {
    let mut resultado = 1;
    for i in 1..=n {
        resultado *= i;
    }
    println!("El factorial de {} es: {}", n, resultado);
}
```

# Fibonacci

## Python
```python
def fibonacci(n):
    a,b = 0,1
    for i in range(n):
        a,b = b,a+b
    return a

print(fibonacci(6))
```

## C
```c

```

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
```perl
```

## Go
```go
```

## Rust
```rust
fn fibonacci(n: usize) {
    if n == 0 {
        println!("Sucesión de Fibonacci hasta el término {}: 0", n);
        return;
    }
    if n == 1 {
        println!("Sucesión de Fibonacci hasta el término {}: 0, 1", n);
        return;
    }
    
    print!("Sucesión de Fibonacci hasta el término {}: 0, 1", n);
    let mut anterior = 0;
    let mut actual = 1;
    for _ in 2..=n {
        let siguiente = anterior + actual;
        print!(", {}", siguiente);
        anterior = actual;
        actual = siguiente;
    }
    println!();
}
```


# Palindromo

## Python
```python
def es_palindromo(palabra):
    palabra = palabra.lower()  
    inicio = 0
    fin = len(palabra) - 1
    while inicio < fin:
        if palabra[inicio] != palabra[fin]:
            print(palabra, "no es un palíndromo.")
            return
        inicio += 1
        fin -= 1
    print(palabra, "es un palíndromo.")
```

## C
```c
```

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
```perl
```

## Go
```go
```

## Rust
```rust
fn es_palindromo(palabra: &str) {
    let palabra = palabra.to_lowercase(); // Convertir la palabra a minúsculas para evitar problemas de mayúsculas/minúsculas
    let mut inicio = 0;
    let mut fin = palabra.len() - 1;
    while inicio < fin {
        if palabra.chars().nth(inicio).unwrap() != palabra.chars().nth(fin).unwrap() {
            println!("{} no es un palíndromo.", palabra);
            return;
        }
        inicio += 1;
        fin -= 1;
    }
    println!("{} es un palíndromo.", palabra);
}

```



