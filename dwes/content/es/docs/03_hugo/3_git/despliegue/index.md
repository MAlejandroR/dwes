---
title: "Despliegue en git"
date: 2021-10-04T13:19:24+02:00
draft: false
weight: 24
icon: fab fa-git-alt
description: "Desplegar un proyecto de hugo en git"
---
# Desplegar un Proyecto Hugo

Hay 
en GitHub Pages usando la Carpeta `/docs`

### 1. Crear el Repositorio en GitHub

Ve a [GitHub](https://github.com/), inicia sesión y crea un nuevo repositorio:
    - Haz clic en **"New"** en la esquina superior derecha.
    - Nombra el repositorio, por ejemplo, **`mi-proyecto-hugo`**.
    - Selecciona **público** si deseas que el sitio sea accesible para todos.
    - Copiamos las instrucciones y vamos a local
    - terminamos el proceso para subir nuestro proyecto, pero antes de ello debemos preparar nuestro proyecto de hugo para deplegarlo 

###  Configurar Hugo para deplegarlo

Por defecto, Hugo genera los archivos estáticos en la carpeta {{< color >}} /docs {{< /color >}}, pero para desplegarlo, git espera que el sitio web esté en una carpeta llamada {{< color >}} /docs {{< /color >}} para GitHub Pages.

1.- Configurar {{< color >}} config.toml (o config.yaml, según el formato de configuración que estés usando) {{< /color >}}
{{< highlight php "linenos=table, hl_lines=1" >}}
publishDir = "docs"
{{< / highlight >}}

También podemos especificarlo cuando creemos el despliegue en local
{{< highlight php "linenos=table, hl_lines=1" >}}
hugo -d docs
{{< / highlight >}}

Esto le indicará a Hugo que genere todos los archivos del sitio estático dentro de la carpeta docs, que es donde GitHub Pages buscará los archivos.

{{< color >}} 2.- Establemcer el BaseURL {{< /color >}}
Ahora debemos especificar la url base para componer todos los elementos relativos a ellos (páginas, imágenes, css, ...)

{{< highlight php "linenos=table, hl_lines=1" >}}
baseURL='https://<tu-usuario>.github.io/mi-proyecto-hugo/'
{{< / highlight >}}

3.- Ahora generamos el sitio estático en la carpeta desplegando en la carpeta {{< color >}} docs {{< /color >}}

{{< highlight php "linenos=table, hl_lines=1" >}}
hugo -d docs
{{< / highlight >}}

4.- Subimos nuestro proyecto a git

### Configurando git para el despliegue
Ahora toca Configurar {{< color >}} GitHub Pages {{< /color >}}

Ve a tu repositorio en GitHub y abre la pestaña {{< color >}} Settings (Configuración). {{< /color >}}

![setting.png](setting.png)

En el menú de la izquierda, selecciona {{< color >}} Pages {{< /color >}}.
![pages.png](pages.png)

En la sección "Source", selecciona main como la rama, y /docs como la carpeta:
![sources.png](source.png)

Guardas los cambios, y después de unos minutos, tu sitio debería estar desplegado en
https://<tu-usuario>.github.io/mi-proyecto-hugo/ (o en la URL correspondiente a tu repositorio).

Puese ver el proceso presionando la opción actions que es dónde se está ejectuando el código necesario para proceder al despliegue.

7. Probar y actualizar el sitio
   Puedes verificar si tu sitio se despliega correctamente visitando la URL proporcionada por GitHub Pages.

Cada vez que realices cambios en tu sitio, simplemente sigue estos pasos:

Modifica tu contenido en Hugo.

Genera nuevamente los archivos estáticos ejecutando hugo (que se guardarán en /docs).

Realiza un commit de los cambios y súbelos a GitHub:

bash
Copiar código
git add .
git commit -m "Actualizando el sitio"
git push origin main
GitHub Pages detectará los cambios en la carpeta /docs y actualizará automáticamente tu sitio.
