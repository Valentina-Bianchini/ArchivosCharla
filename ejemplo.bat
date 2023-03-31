@echo off

/*abre vsc con comandos de .bat*/
/*
.bat es un archivo batch o ejecutable por lotes, es un archivo de texto plano que contiene una 
serie de comandos se SO que pueden ejectarse en consola
*/ 

/*inicia una nueva instancia de editor de código fuente Visual Studio Code*/
start code "C:\Users\valentina.bianchini\Desktop\Charla Jenkins\ejemplo.bat"

/*detiene la ejecución de un archivo batch o script por un período de tiempo determinado antes 
de continuar con la ejecución*/
timeout /t 5

start code "C:\Users\valentina.bianchini\Desktop\Charla Jenkins\pipeline.yaml"
timeout /t 5

/*inicia una nueva instancia de edge en el servidor local de Jenkins*/
start microsoft-edge:http://localhost:8080/

/*inicia una nueva instancia de edge con la documentacion de Jenkins*/
start microsoft-edge:https://www.jenkins.io/doc/

timeout /t 5

/*inicia una nueva instancia de intellij con el proyecto de automatizacion a ejecutar 
desde Jenkins*/

/*seteo de variables*/
set IDEA_BIN_DIR="C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2022.2.3\bin"
set PROJECT_DIR="C:\Users\valentina.bianchini\Desktop\Cursos Testing\Clarin Web\SerenityCucumberBDD"

/*comando de ejecución de instancia*/
start "" %IDEA_BIN_DIR%\idea64.exe %PROJECT_DIR%