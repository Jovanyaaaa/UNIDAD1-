using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Descripción breve de Peliculas
/// </summary>
namespace BLL
{
    public class Peliculas
    {
        public Peliculas()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }


        public static long InsertPelicula(Peliculainfo info)
        {
            Pelicula Pelicula = new Pelicula();

            Pelicula.IDPelicula = info.IDPelicula;
            Pelicula.Nombre = info.Nombre;

            Pelicula.Duracion = info.Duracion;
            Pelicula.Elenco = info.Elenco;

            Pelicula.Director = info.Director;
            Pelicula.Reseña = info.Reseña;

            DataClassesDataContext dc = new DataClassesDataContext();

            dc.Pelicula.InsertOnSubmit(Pelicula);
            dc.SubmitChanges();
            return Pelicula.IDPelicula;



        }
        public class Peliculainfo
        {
            public long IDPelicula { get; set; }
            public string Nombre { get; set; }

            public DateTime Duracion { get; set; }
            public string Elenco { get; set; }

            public string Director { get; set; }
            public string Reseña { get; set; }
        }
    }
}