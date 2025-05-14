# Reto de Automatización Web - ENCORA

Este proyecto es un reto de automatización web de la página https://www.saucedemo.com utilizando herramientas como **Selenium**, **Serenity**, **Cucumber**, **Intellij** o **Aqua**.

## Tecnologías y Herramientas
- **Intellij:** Herramienta de automatización de pruebas que facilita la creación y gestión de pruebas.
- **Aqua:** Herramienta de automatización de pruebas que facilita la creación y gestión de pruebas.
- **Selenium WebDriver:** Para la automatización de pruebas de interacción con el navegador.
- **Cucumber:** Para realizar pruebas basadas en comportamiento (BDD).
- **Serenity BDD:** Para gestionar las pruebas automatizadas y generar reportes detallados.
- **JUnit 5:** Framework de pruebas para la ejecución y gestión de las pruebas.
- **Maven:** Gestión de dependencias y construcción del proyecto.

## Requisitos

Asegúrate de tener las siguientes herramientas instaladas antes de ejecutar el proyecto:

- **Java 11** o superior.
- **Maven** para manejar las dependencias del proyecto.
- **Aqua** debe estar configurado para gestionar las pruebas (si aún no lo has hecho, revisa la documentación de Aqua para su configuración).

## Instalación

1. Clona este repositorio a tu máquina local:

    git clone https://github.com/Khernandez40/ENCORA.git
   
## Ejecución de las Pruebas

Para ejecutar las pruebas, simplemente usa el siguiente comando de Maven:

    mvn clean verify

## Reportes

**Serenity** generará reportes detallados después de la ejecución de las pruebas. Los reportes estarán disponibles en el directorio `target/site/serenity/`. Para visualizar el reporte, abre el archivo `index.html` en tu navegador.
