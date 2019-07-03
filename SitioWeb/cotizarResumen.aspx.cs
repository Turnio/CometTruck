using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cotizarResumen : System.Web.UI.Page
{
    Cotizacion objCotizacion = new Cotizacion();

    protected void Page_Load(object sender, EventArgs e)
    {
        objCotizacion = (Cotizacion)Session["cotizacion"];
        cargarResumen();
    }


    public void cargarResumen()
    {

        dirOrigen.Text = objCotizacion.calleOrigen;
        comOrigen.Text = objCotizacion.comunaOrigen;
        numOrigen.Text = objCotizacion.numeroOrigen;

        dirDestino.Text = objCotizacion.calleDestino;
        comDestino.Text = objCotizacion.comunaDestino;
        numDestino.Text = objCotizacion.numeroDestino;

        fechaOrigen.Text = "" + objCotizacion.fechaInicio;
        horaOrigen.Text = "" + objCotizacion.horaInicio;

        fechaDestino.Text = "" + objCotizacion.fechaInicio;
        horaDestino.Text = "" + objCotizacion.horaTermino;

        nomOrigen.Text = objCotizacion.nombre;
        apeOrigen.Text = objCotizacion.apellidos;
        rutOrigen.Text = objCotizacion.rut;
        numOrigen.Text = objCotizacion.numeroOrigen;
        telOrigen.Text = "+"+objCotizacion.telefono;
        lblEmailOrigen.Text = objCotizacion.email;

        nomDestino.Text = objCotizacion.nombreReceptor;
        apeDestino.Text = objCotizacion.apellidoReceptor;
        rutDestino.Text = objCotizacion.rutReceptor;
        numDestino.Text = objCotizacion.numeroDestino;
        telDestino.Text = "+"+objCotizacion.telefonoReceptor;
        lblEmailDestino.Text = objCotizacion.emailReceptor;

        lblTCamion.Text = objCotizacion.tipoVehiculo;

        lblEmbalaje.Visible = (bool)objCotizacion.servicioEmbalaje;
        lblPeoneta.Visible = (bool)objCotizacion.servicioPioneta;
        lblInventario.Visible = (bool)objCotizacion.servicioInventario;
        

     }

    protected void btnSiguiente_Click(object sender, EventArgs e)
    {
       envioCorreo();
    }

    public void envioCorreo()
    {
        // informacion
        System.Net.Mail.MailMessage mensaje = new System.Net.Mail.MailMessage();

        mensaje.To.Add(objCotizacion.email); // receptor
        mensaje.Subject = "Cotización Mudanza -CometTruck-"; // asunto del mensaje
        mensaje.SubjectEncoding = System.Text.Encoding.UTF8; // encoding para servidores
        mensaje.Bcc.Add(objCotizacion.emailReceptor);


        mensaje.Body =
            "Cotización de Mudanza <br/> "+
            "Nombre encargado: " + nomOrigen.Text + " " + apeOrigen.Text + "<br/>" +
            "Email encargado: " + lblEmailOrigen.Text + "<br/>" +
            "Servicios Contratados: " + serviciosContratados() +"<br/>" + 
            "Total: $2000000"        
            ; // cuenrpo mensaje


        mensaje.BodyEncoding = System.Text.Encoding.UTF8;
        mensaje.IsBodyHtml = true;
        mensaje.From = new System.Net.Mail.MailAddress("bastian.vidal05@inacapmail.cl"); // mi correo 

        System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient(); // nuevo cliente smtp

        cliente.Credentials = new System.Net.NetworkCredential("bastian.vidal05@inacapmail.cl", "09101998"); // correo y contraseña

        cliente.Port = 587; // puerto
        cliente.EnableSsl = true; // seguridad ssl

        cliente.Host = "SMTP.Office365.com"; // servidor de salida

        try
        {
            cliente.Send(mensaje);
            lblMensaje.Text = "Mensaje enviado";
            lblMensaje.ForeColor = System.Drawing.Color.Orange;
            lblMensaje.Visible = true;
            //Console.WriteLine("Mensaje enviado!!");
            //Console.ReadKey();
        }
        catch (Exception ex)
        {
            lblMensaje.Text = "Erorr al enviar cotización";
            lblMensaje.Visible = true;
            
           // Console.WriteLine("Maaal: " + ex);
            //Console.ReadKey();
        }


    }

    public string serviciosContratados()
    {
        string servicios = "";

        if (objCotizacion.servicioPioneta == true)
        {
            servicios = servicios+" -Pioneta";
        }

        if (objCotizacion.servicioEmbalaje == true)
        {
            servicios = servicios + " -Embalaje";
        }

        if (objCotizacion.servicioInventario == true)
        {
            servicios = servicios + " -Inventario";
        }

        return servicios;
    }
    
}