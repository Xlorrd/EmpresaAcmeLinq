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

        public void EnviarEmail(string EnviarE, string ContraseñaRecuperar)
        {
            //ahora accedemos a lo que hay en el web config que es el correo y contraseña de administrador
            //string correoAdministrador = ConfigurationManager.AppSettings["CorreoElectronico"].ToString();
            //string contraseñaAdministrador = ConfigurationManager.AppSettings["ContraseñaCorreo"].ToString();
            string correoAdministrador = "alx.simb@gmail.com";
            string contraseñaAdministrador = "";

            string asunto = "Recuperacion de de Contraseña ";

            string body = "Su Contraseña es: " + ContraseñaRecuperar;

            //configuraciones smtp
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(correoAdministrador, contraseñaAdministrador);
                smtp.Timeout = 20000; //tiempo de espera para mandar el correo 
            }

            try
            {
                smtp.Send(correoAdministrador, EnviarE, asunto, body);
            }
            catch (Exception ex)
            {
                //ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "AlertUsuario", "Window.onload - " +
                //"function(){alert ('El usuario no existe');};", true);

            }
        }
    }
}
