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

(defun areaPrismaTriangular()
    (setq areaBase (areaTriangulo))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq volumen (* areaBase altura))
    volumen
)


(defun areaCirculo()
    (princ "Dame la longitud de su radio: ")
    (setq radio (read))
    (setq area (expt (* 3.1416 radio) 2))
    area
)
