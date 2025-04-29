# indeChat


El 28 de Abril España sufrio un apagon. La dependencia que tenemos en las redes electricas y de comunicación quedo en evidencia. Por ello he creado unos scripts que permiten crear un AP (Access Point) y hostear un servidor IRC ([ngircd](https://ngircd.barton.de/)) y un cliente IRC web ([thelounge](https://thelounge.chat/)) rapidamente.

Es necesario tener docker instalado.

## Como instalar
La "instalación" simplemente da permisos de ejecución al resto de scripts y pullea las imagenes de los servicios que se van a hostear.
```
git clone git@github.com:Matx1n3/indeChat.git
cd indeChat
chmod +x install.sh
./install.sh
```

## Como usar
```
./run.sh [AP name] [Interface]
```

El cliente quedara expuesto en el puerto 9000 y el servidor IRC en el 6667. También se pueden usar otros clientes IRC.