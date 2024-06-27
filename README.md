* Construir contenedor:  docker compose up -d --build
* Parar el contenedor: docker compose stop
* Iniciar el contenedor: docker compose start
* Destruir contenedor:  docker compose down -v
* Validar que el contenedor no presenta errores: docker compose logs dbt-postgres
* Ejecutar base de datos: docker compose exec dbt-postgres psql -U postgres