# Investigación lenguajes.

# -Python
### **Tipado de datos**
Dinámico y fuertemente tipado.

### **Tipos de dato**
int: números enteros.
float: números de punto flotante.
str: cadenas de texto.
bool: valores booleanos (True o False).
list: listas ordenadas de elementos.
tuple: secuencias inmutables de elementos.
dict: colecciones de pares clave-valor.
set: colecciones desordenadas de elementos únicos.

### **Paradigma**
Python es un lenguaje de programación multiparadigma, pero se destaca por ser orientado a objetos, funcional e imperativo.

# -C

### **Tipado de datos**
C es un lenguaje de programación estáticamente tipado y débilmente tipado.

### **Tipos de dato**
char: caracteres.
int: números enteros.
float: números de punto flotante.
double: números de punto flotante de doble precisión.
void: tipo especial que indica la ausencia de tipo.

### **Paradigma**
C es un lenguaje de programación imperativo y estructurado, aunque también puede ser utilizado de manera procedural y, en cierta medida, orientado a objetos mediante el uso de estructuras y punteros.

# -Java

### **Tipado de datos**
Java es un lenguaje de programación estáticamente tipado y fuertemente tipado.

### **Tipos de dato**
byte: números enteros de 8 bits.
short: números enteros de 16 bits.
int: números enteros de 32 bits.
long: números enteros de 64 bits.
float: números de punto flotante de 32 bits.
double: números de punto flotante de 64 bits.
char: caracteres Unicode de 16 bits.
boolean: valores booleanos (true o false).

### **Paradigma**
Java es principalmente un lenguaje de programación orientado a objetos, aunque también soporta programación imperativa y funcional a través de bibliotecas y características introducidas en versiones más recientes.

# -Perl

### **Tipado de datos**
Perl es un lenguaje de programación dinámicamente tipado y débilmente tipado.

### **Tipos de dato**
Escalares (números, cadenas de texto, referencias).
Arrays.
Hashes (asociaciones de pares clave-valor).

### **Paradigma**
Perl tiene características que soportan una variedad de paradigmas de programación, como la imperativa, funcional y la orientada a objetos.

# -Go

### **Tipado de datos**
Go es un lenguaje de programación estáticamente tipado y fuertemente tipado.

### **Tipos de dato**
Números enteros con y sin signo (int, uint).
Números de punto flotante (float32, float64).
Cadenas de texto (string).
Booleanos (bool).

### **Paradigma**
Go es un lenguaje de programación concurrente y compilado, que sigue principalmente un paradigma imperativo, aunque también incorpora características de programación funcional.

# -Rust

### **Tipado de datos**
Rust es un lenguaje de programación estáticamente tipado y fuertemente tipado.

### **Tipos de dato**
Tipos primitivos como enteros, flotantes, booleanos y caracteres.
Tipos compuestos como arrays, tuplas y slices.
Tipos de datos personalizados mediante estructuras (structs) y enumeraciones (enums).


### **Paradigma**
 Rust es un lenguaje de programación multiparadigma que combina características de programación imperativa, funcional y orientada a objetos


---
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
```c
int factorial(int n) {
    unsigned long long resultado = 1;
    for (int i = 1; i <= n; ++i) {
        resultado *= i;
    }
    return resultado;
}
```

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
sub factorial {
    my $n = shift;
    my $resultado = 1;
    for my $i (1..$n) {
        $resultado *= $i;
    }
    return $resultado;
}
```

## Go
```go
func factorial(n int) uint64 {
	resultado := uint64(1)
	for i := 1; i <= n; i++ {
		resultado *= uint64(i)
	}
	return resultado
}
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
---
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
int fibonacci(int n) {
    int a = 0, b = 1, temp;
    if (n == 0)
        return a;
    else if (n == 1)
        return b;
    else {
        for (int i = 2; i <= n; ++i) {
            temp = a + b;
            a = b;
            b = temp;
        }
        return b;
    }
}
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
sub fibonacci {
    my $n = shift;
    my ($a, $b) = (0, 1);
    if ($n == 0) {
        return $a;
    } elsif ($n == 1) {
        return $b;
    } else {
        for my $i (2..$n) {
            my $temp = $a + $b;
            $a = $b;
            $b = $temp;
        }
        return $b;
    }
}
```

## Go
```go
func fibonacci(n int) int {
	a, b := 0, 1
	if n == 0 {
		return a
	} else if n == 1 {
		return b
	} else {
		for i := 2; i <= n; i++ {
			temp := a + b
			a = b
			b = temp
		}
		return b
	}
}
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

---
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
bool esPalindroma(char palabra[]) {
    int longitud = strlen(palabra);
    for (int i = 0; i < longitud / 2; ++i) {
        if (palabra[i] != palabra[longitud - i - 1]) {
            return false;
        }
    }
    return true;
}
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
sub esPalindroma {
    my $palabra = shift;
    $palabra = lc($palabra);
    my $longitud = length($palabra);
    for my $i (0..int($longitud / 2)) {
        if (substr($palabra, $i, 1) ne substr($palabra, $longitud - $i - 1, 1)) {
            return 0;
        }
    }
    return 1;
}
```

## Go
```go
func esPalindroma(palabra string) bool {
	palabra = strings.ToLower(palabra)
	longitud := len(palabra)
	for i := 0; i < longitud/2; i++ {
		if palabra[i] != palabra[longitud-i-1] {
			return false
		}
	}
	return true
}
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



