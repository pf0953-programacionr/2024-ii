# Se utiliza la imagen rocker/geospatial:4.4.1 como base
FROM rocker/geospatial:4.4.1

# Definición de la variable de entorno PASSWORD
ENV PASSWORD=pf0953

# Instalación del paquete here de R, versión 1.0.1
RUN R -e "devtools::install_version('here', version = '1.0.1', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete DT de R, versión 0.33
RUN R -e "devtools::install_version('DT', version = '0.33', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete plotly de R, versión 4.10.4
RUN R -e "devtools::install_version('plotly', version = '4.10.4', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete leaflet.extras de R, versión 2.0.1
RUN R -e "devtools::install_version('leaflet.extras', version = '2.0.1', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete titanic de R, versión 0.1.0
RUN R -e "devtools::install_version('titanic', version = '0.1.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete palmerpenguins de R, versión 0.1.1
RUN R -e "devtools::install_version('palmerpenguins', version = '0.1.1', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete gapminder de R, versión 1.0.0
RUN R -e "devtools::install_version('gapminder', version = '1.0.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete ggthemes de R, versión 5.1.0
RUN R -e "devtools::install_version('ggthemes', version = '5.1.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete hrbrthemes de R, versión 0.8.7
RUN R -e "devtools::install_version('hrbrthemes', version = '0.8.7', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete rgbif de R, versión 3.8.1
RUN R -e "devtools::install_version('rgbif', version = '3.8.1', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete geodata de R, versión 0.6-2
RUN R -e "devtools::install_version('geodata', version = '0.6-2', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete dismo de R, versión 1.3-14
RUN R -e "devtools::install_version('dismo', version = '1.3-14', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete tmap, versión 4 (recomendada en https://github.com/r-tmap/tmap)
RUN R -e "remotes::install_github('r-tmap/tmap')"


# Se limpia el cache de apt-get para reducir el tamaño de la imagen
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Se expone el puerto por defecto de RStudio Server
EXPOSE 8787