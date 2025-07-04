Base de datos PuertoGames
5 tablas:
Videojuego
plataforma
genero
usuarios.

Grafico de barra: Ventas por titulo y plataforma.

Grafico de torta: nivel de ventas.
      data.forEach(({ cantidad }) => {
          if (cantidad >= 7) niveles.Alta += cantidad;
          else if (cantidad >= 3) niveles.Media += cantidad;
          else niveles.Baja += cantidad;
      });

Grafico de barra: Cantidad de titulos vendidos.
