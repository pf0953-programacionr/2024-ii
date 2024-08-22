# PF-0953 Programación en R 2024-II

## Contenedor Docker

### Construcción y ejecución

``` shell
# Construcción del contenedor Docker
docker build -t pf0953-2024-ii .

# Ejecución del contenedor Docker
# (el directorio local debe especificarse en la opción -v)
docker run -d --name pf0953-2024-ii \
  -p 8787:8787 \
  -v /home/mfvargas/pf0953-programacionr/2024-ii/github:/home/rstudio \
  --env-file /home/mfvargas/pf0953-2024-ii.env \
  pf0953-2024-ii
```

### Acceso

<http://localhost:8787>

### Detención y borrado

``` shell
# Para detener el contenedor Docker
docker stop pf0953-2024-ii

# Borrado del contenedor Docker
docker rm pf0953-2024-ii
```

### Ejemplo de contenido del archivo `pf0953-2024-ii.env`

(deben asignarse valores adecuados a las variables)

``` shell
# Clave para ingresar a RStudio
PASSWORD=pf0953
```
