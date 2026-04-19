#creacion de un directorio y hacer respaldo.

# Indicamos la ruta donde se crea el directorio.
$origen = "C:\Users\Public\Documents"
# Nombre del directorio y su respaldo dentro del directorio.
$destino = "C:\Automatizaciones\Respaldos"
# Obtener la fecha y hora actual en un formato sencillo
$fecha = Get-Date -Format "yyyy-MM-dd_HHmm"
#nombre final del archivo y la fecha para ue en nombre sea dinamico.
$nombreArchivo = "Respaldo_$fecha.zip"

# Crea una carpeta Destino si no existe.
if (!(Test-Path $destino)) 
{
 New-Item -Path $destino -ItemType Directory 
 Write-Output "Carpeta de origen creada: $origen" -
}
# Crea tres archivos de textos llamados pruebas 1, 2, 3.
1..3 | ForEach-Object {
    $archivoRuta = Join-Path $origen "Prueba_$_.txt"
    "Este es el contenido del archivo de prueba número $_" | Out-File -FilePath $archivoRuta
    # Nos indica que el archivo fue creado.
    Write-Output "Archivo creado: $archivoRuta" 
    }
# Comprime y Guarda la carpeta  respaldos.
Compress-Archive -Path $origen -DestinationPath "$destino\$nombreArchivo" 
# Muestra el mensaaje que se creo el respado exitosamente.
Write-Output "Respaldo completado exitosamente en $destino" 


# Apgar mi computadora a cierta hora programada.

# Definir la hora de apagdo de la pc:
$hora = "22:00"
# Mensaje que muestra que se va apaagar l maquin en color Cyan
Write-Host "La máquina se apagará a las $hora" -ForegroundColor Cyan
#formato de la hora  y tiempo de espera  antes de apagarse.
while ((Get-Date -Format "HH:mm") -ne $hora) {
    Start-Sleep -Seconds 20   
}
# Apagado instantaneo.
Stop-Computer -Force

# Guardar un archivo de texto y los proceso ejecutando en la máquina virtual.

# 1. Obtener la fecha y hora actual en un formato sencillo
$Tiempo = Get-Date -Format "dd-MM-yyyy_HH-mm"

# 2. Crear un título con la fecha para el interior del archivo
$Titulo = "Reporte de procesos realizado el: $Tiempo"

# 3. Guardar el título y la lista de procesos en el archivo
$Titulo | Out-File -FilePath "C:\Users\user\Procesos_Activos.txt"

# Guarda una lista de todos los programas y procesos que se están ejecutando en mi PC.
Get-Process | Out-File -FilePath "C:\Users\user\Procesos_Activos.txt" -Append

# 4. Aviso de éxito
Write-Host "Procesos guardados exitosamente." -ForegroundColor Cyan