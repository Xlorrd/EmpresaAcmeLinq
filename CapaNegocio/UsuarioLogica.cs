using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using System.Data.Linq;
using System.Configuration;
using System.Net.Mail;
using System.Net;


namespace CapaNegocio
{
    public class UsuarioLogica
    {
        //instancia capa datos
        public static ProyectoAcmeDataContext dc = new ProyectoAcmeDataContext();
        // hacer lo que es un select * from


        public static Tbl_Usuario Autentificar_Usuario(String nombre, string pass)
        {
            var nlogin = dc.Tbl_Usuario.Single(usu => usu.usu_estado == "A" & usu.usu_nombre.Equals(nombre)
            & usu.usu_contra.Equals(pass));
            return nlogin;
        }

        public static bool Autentificar(string nombre, String pass)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == "A" & usu.usu_nombre.Equals(nombre)
            & usu.usu_contra.Equals(pass));
            return auto;
        }

    }
}
