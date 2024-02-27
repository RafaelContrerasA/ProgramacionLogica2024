(defun areaCuadrado()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (setq area (expt lado 2))
    (write area)
)

(defun volumenCubo()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (setq volumen (expt lado 3))
    (write volumen)
)

(defun areaRectangulo()
    (princ "Dame la longitud de su base: ")
    (setq base (read))
    (princ "Dame la longitud de su altura: ")
    (setq altura (read))
    (setq area (* base altura))
    area
)

(defun volumenPrismaRectangular()
    (setq areaBase (areaRectangulo)) 
    (princ "Dame la altura: ")       
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)

(defun areaTriangulo()
    (princ "Dame la longitud de su base: ")
    (setq base (read))
    (princ "Dame la longitud de su altura: ")
    (setq altura (read))
    (setq area (/ (* base altura) 2))
    area
)

(defun volumenPrismaTriangular()
    (setq areaBase (areaTriangulo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)

(defun volumenPrismaTriangular()
    (setq areaBase (areaTriangulo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* (/ areaBase 3) altura))
    volumen
)

(defun areaCirculo()
    (princ "Dame la longitud de su radio: ")
    (setq radio (read))
    (setq area (expt (* 3.1416 radio) 2))
    area
)

(defun volumenEsfera()
    (princ "Dame el radio: ")
    (setq radio (read))
    (setq volumen (* (/ 4 3 ) 3.1416 (expt radio 3)) )
    volumen
)

(defun volumenCilindro()
    (setq areaBase (areaCirculo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura) )
    volumen
)

(defun volumenCono()
    (setq areaBase (areaCirculo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (/ (* areaBase altura) 3) )
    volumen
)

(defun areaPentagono()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (princ "Dame la longitud del apotema: ")
    (setq apotema (read))
    (setq area (/(* (* lado 5) apotema) 2))
    area
)

(defun volumenPrismaPentagonal()
    (setq areaBase (areaPentagono))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)

(defun volumenDodecaedro()
    (princ "Dame la longitud de la arista: ")
    (setq arista (read))
    (setq volumen (* (/ 1  4) (+ 15 (* 7 (sqrt 5) )) (expt arista 3)) )
    volumen
)

(defun areaHexagono()
    (princ "Dame la longitud de su lado: ")
    (setq lado (read))
    (princ "Dame la longitud del apotema: ")
    (setq apotema (read))
    (setq area (/(* (* lado 6) apotema) 2))
    area
)

(defun volumenPrismaHexagonal()
    (setq areaBase (areaHexagono))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)

(defun areaRombo()
    (princ "Dame la longitud de la diagonal mayor: ")
    (setq dMayor (read))
    (princ "Dame la longitud de la diagonal menor: ")
    (setq dMenor (read))
    (setq area (/ (* dMayor dMenor) 2))
    area
)

(defun areaTrapecio()
    (princ "Dame la longitud de la base mayor: ")
    (setq bMayor (read))
    (princ "Dame la longitud de la base menor: ")
    (setq bMenor (read))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq area (/ (* (+ dMayor dMenor) altura) 2))
    area
)

(defun areaElipse()
    (princ "Dame la longitud del semi-eje mayor: ")
    (setq sEjeMayor (read))
    (princ "Dame la longitud del semi-eje menor: ")
    (setq sEjeMenor (read))
    (setq area (* 3.1416 (* dMayor dMenor)))
    area
)

(defun areaRomboide()
    (princ "Dame la longitud de su base: ")
    (setq base (read))
    (princ "Dame la longitud de su altura: ")
    (setq altura (read))
    (setq area (* base altura))
    area
)

(defun menuCase()
    (princ "Elije la opcion deseada
    [1]: Area Cuadrado
    [2]: Volumen Cubo
    [3]: Area Rectangulo
    [4]: Volumen Prisma Rectangular
    [5]: Area Triangulo
    [6]: Volumen Prisma Triangular
    [7]: Volumen Prisma Triangular
    [8]: Area Circulo
    [9]: Volumen Esfera
    [10]: Volumen Cilindro
    [11]: Volumen Cono
    [12]: Area Pentagono
    [13]: Volumen Prisma Pentagonal
    [14]: Volumen Dodecaedro
    [15]: Area Hexagono
    [16]: Volumen Prisma Hexagonal
    [17]: Area Rombo
    [18]: Area Trapecio
    [19]: Area Elipse
    [20]: Area Romboide
    : ")
    (setq op (read))
    
    (case op 
        ((1) (areaCuadrado))
        ((2) (volumenCubo))
        ((3) (areaRectangulo))
        ((4) (volumenPrismaRectangular))
        ((5) (areaTriangulo))
        ((6) (volumenPrismaTriangular))
        ((7) (volumenPrismaTriangular))
        ((8) (areaCirculo))
        ((9) (volumenEsfera))
        ((10) (volumenCilindro))
        ((11) (volumenCono))
        ((12) (areaPentagono))
        ((13) (volumenPrismaPentagonal))
        ((14) (volumenDodecaedro))
        ((15) (areaHexagono))
        ((16) (volumenPrismaHexagonal))
        ((17) (areaRombo))
        ((18) (areaTrapecio))
        ((19) (areaElipse))
        ((20) (areaRomboide))
        (otherwise (print "Opción no válida"))
    )
)

(defun menuCond()
    (princ "Elige la opción deseada:
    [1]: Área Cuadrado
    [2]: Volumen Cubo
    [3]: Área Rectángulo
    [4]: Volumen Prisma Rectangular
    [5]: Área Triángulo
    [6]: Volumen Prisma Triangular
    [7]: Volumen Prisma Triangular
    [8]: Área Círculo
    [9]: Volumen Esfera
    [10]: Volumen Cilindro
    [11]: Volumen Cono
    [12]: Área Pentágono
    [13]: Volumen Prisma Pentagonal
    [14]: Volumen Dodecaedro
    [15]: Área Hexágono
    [16]: Volumen Prisma Hexagonal
    [17]: Área Rombo
    [18]: Área Trapecio
    [19]: Área Elipse
    [20]: Área Romboide
    : ")

    (setq op (read))

    (cond
        ((= op 1) (areaCuadrado))
        ((= op 2) (volumenCubo))
        ((= op 3) (areaRectangulo))
        ((= op 4) (volumenPrismaRectangular))
        ((= op 5) (areaTriangulo))
        ((= op 6) (volumenPrismaTriangular))
        ((= op 7) (volumenPrismaTriangular))
        ((= op 8) (areaCirculo))
        ((= op 9) (volumenEsfera))
        ((= op 10) (volumenCilindro))
        ((= op 11) (volumenCono))
        ((= op 12) (areaPentagono))
        ((= op 13) (volumenPrismaPentagonal))
        ((= op 14) (volumenDodecaedro))
        ((= op 15) (areaHexagono))
        ((= op 16) (volumenPrismaHexagonal))
        ((= op 17) (areaRombo))
        ((= op 18) (areaTrapecio))
        ((= op 19) (areaElipse))
        ((= op 20) (areaRomboide))
        (t (print "Opción no válida"))
    )
)