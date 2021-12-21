---
title: "Crear Sitios Estáticos"
linkTitle: "Sitios Estáticos"
weight: 2
date: 2021-09-15
description: >
  Introducción a la creación de sitios estáticos con Hugo
---


emojify  `:heart`:  se visualiza :heart:

{{% pageinfo %}}
* Introducción a la generación de sitios web con HUGO
* Crear un sitio estático con hugo
* Instala, configura y agraba contenidos
{{% /pageinfo %}}

## ¿Por qué un generador de sitios estáticos?

* Rapidez
* Seguridad
* Eficiencia
* Consistencia de contenidos y formatos


## Instalación 

Tiene instaladores para mac, windows y linux:
* [https://gohugo.io/getting-started/quick-start/#step-1-install-hugo](https://gohugo.io/getting-started/quick-start/#step-1-install-hugo)




{{% pageinfo %}}
Recuerda:
* Instalar la herramienta **hugo**
* Gestionamos *todo* desde un **terminal**
* Verifica la versión *(yo trabajaré con V0.88)*
{{% /pageinfo %}}

<tab>
```bash
sudo apt-get install hugo 
```
Con ***snap***
```bash
snap install hugo
```
Si no tuviera [snap](https://snapcraft.io/docs/snap-documentation) instalado
```bash
sudo apt-get install snapd
```
</tab>


Esta opción actualmente instala una versión 0.68 ***La actual es 0.88***

Otra opción es instalar con  snap , o bien descargar el paquete de la web  [Página de hugo](https://gohugo.io)

## Crear un sitio nuevo
Mejor tener una carpeta concreta para los sitios que vayamos a crear
```bash
$ hugo new site <nombre_del_sitio>
```
{{% alert %}}
No tengas miedo a volver a crear de nuevo otro sitio si quieres volver a probar
{{% /alert %}}
## Markdown
Repaso (o apredner) la sintaxis:

* [https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* https://programminghistorian.org/es/lecciones/introduccion-a-markdown
* 
Este metalenguaje o lenguaje con marcas es muy utilizado en la  documentación técnica.

Es importante aprender a utilizarla con cierta flexibilidad