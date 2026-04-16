#Asigna un valor numerico 2 a la variable $a
$a=2
#Asigana el texto "chao" de la variable $b
$b= "chao"
#muestara el valor de $a
write-host $a
#muestra el valor de $b
Write-Output $b
#Muestra "hola" con texto verde y fondo amarillo
Write-Host "Hola" -ForegroundColor Green -BackgroundColor yellow
#Define la variable $x en un numero entero
[int]$x = "10"
#Envia  el valor de $x a la salida
write-output $x
#Define la variable $y como una variable de texto
[string]$y = "test"
#Envia  el valor de $y a la salida
write-output $y
#Crea un orde del contenido de los numeros 1, 2 y 3
[array]$z = @(1,2,3)
#Envia  el valor de $z a la salida
write-host $z
$c
[int]$x = 10
if ($x -gt 5) {
Write-Host "Mayor que 5"
} else {
Write-Host "5 o menos"
}
$lista = @(1, 2, 3)
foreach ($i in $lista) {
Write-Host $i
}
$x = 0
while ($x -lt 3) {
Write-Host $x
$x++
}
function Sumar($a, $b) {
return $a + $b
}
write-host (Sumar 5 7) # Devuelve 12