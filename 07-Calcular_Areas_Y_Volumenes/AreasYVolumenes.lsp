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
