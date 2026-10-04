# Harry Potter - Backend & QA Demo Kit

Este respositorio funciona como un Backend & QA Testing Demo Kit desarrollado como un portfolio técnico complementario para la aplicación web de Harry Potter. Incluye prueba de API en Postman, diseño de base datos relacional SQL y batería de pruebas unitarias en Java con JUnit 5.

## Resumen Arquitectónico y Pilares

El proyecto está estructurado en tres pilares fundamentales:

1. Base de Datos (SQL): Modelado de datos, claves foráneas y consultas relacionales utilizando lógica estándar con JOIN.

2. Lógica y Pruebas Unitarias (Java + JUnit 5): Modelado de entidades del dominio, gestión de casos límite/nulos y aserciones para la lógica de negocio.

3. Pruebas de API (Postman): Validación automatizada de contratos HTTP, verificación de esquemas JSON y control de umbrales de rendimiento.

## Estructura del Repositorio

harrypotter_qa_backend/
├── src/
│   ├── harryPotter/
│   │   └── Character.java          # Clase de dominio Java
│   └── test/
│       └── CharacterTest.java      # Casos de prueba JUnit 5
├── .gitignore                      # Archivo de exclusión de Git
├── harrypotter_db.sql              # Esquema relacional y datos SQL
├── harrypotter_api_tests.json      # Colección de Postman con scripts automatizados
└── README.md                       # Documentación del proyecto
