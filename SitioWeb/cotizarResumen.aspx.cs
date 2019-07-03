using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cotizarResumen : System.Web.UI.Page
{
    Cotizacion objCotizacion = new Cotizacion();
    int codigoPostalTotal = 0;
    int codigoCotizacionRealizada = 0;
    long idcotizacion = 0;

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

        calcularCosto();
     }

    protected void btnSiguiente_Click(object sender, EventArgs e)
    {
       envioCorreo();
    }

    public void envioCorreo()
    {
        objCotizacion.comunaOrigen = regexAlfabetico(objCotizacion.comunaOrigen);
        objCotizacion.comunaDestino = regexAlfabetico(objCotizacion.comunaDestino);
        objCotizacion.tipoVehiculo = regexAlfabetico(objCotizacion.tipoVehiculo);
        objCotizacion.total = codigoPostalTotal;

        SampleEntityFramework db = new SampleEntityFramework();
        db.Cotizacion.Add(objCotizacion);
        db.SaveChanges();
        idcotizacion = objCotizacion.idCotizacion;

        

        // informacion
        System.Net.Mail.MailMessage mensaje = new System.Net.Mail.MailMessage();

        mensaje.To.Add(objCotizacion.email); // receptor
        mensaje.Subject = "Cotización Mudanza -CometTruck-"; // asunto del mensaje
        mensaje.SubjectEncoding = System.Text.Encoding.UTF8; // encoding para servidores
        mensaje.Bcc.Add(objCotizacion.emailReceptor);


        mensaje.Body =
            "<h1>Cotización de Mudanza</h1> <br/> " +
            "N° Cotización:" +""+idcotizacion +"<br/>" +
            "Nombre encargado: " + nomOrigen.Text + " " + apeOrigen.Text + "<br/>" +
            "Email encargado: " + lblEmailOrigen.Text + "<br/>" +
            "Servicios Contratados: " + serviciosContratados() + "<br/><br/>" +

            "Dirección de Origen: " + regexAlfabetico(comOrigen.Text) + " " + dirOrigen.Text + " " + numOrigen.Text + "<br/>" +
            "Fecha de retiro: " + fechaOrigen.Text+ "<br/>" +
            "Hora de retiro: "+horaOrigen.Text + "<br/><br/>"+
            
            "Dirección de Destino: " + regexAlfabetico(comDestino.Text) + " " + dirDestino.Text+ " " + numDestino.Text + "<br/>" +
            "Fecha de entrega: " + fechaDestino.Text + "<br/>" +
            "Hora de entrega: " + horaDestino.Text + "<br/><br/>" +

            "Tipo de camion solicitado: "+ regexAlfabetico(lblTCamion.Text) +"<br/><br/>"+

            "Total: $" + codigoPostalTotal;
                
            ; // cuenrpo mensaje


        mensaje.BodyEncoding = System.Text.Encoding.UTF8;
        mensaje.IsBodyHtml = true;
        mensaje.From = new System.Net.Mail.MailAddress(""); // correo destinatario

        System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient(); // nuevo cliente smtp

        cliente.Credentials = new System.Net.NetworkCredential("", ""); // credenciales de correo del cual se envia , no dejar credenciales escritas, hay un sacando las pass

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
    
    public void calcularCosto()
    {

        using (SampleEntityFramework db = new SampleEntityFramework())
        {
            
            int baseMudanza = 70000;

            Comuna objComunaOrigen = new Comuna();
            int idComunaOrigen = Convert.ToInt32(regexNumerico(comOrigen.Text));
            objComunaOrigen = db.Comuna.Where(s => s.idComuna == idComunaOrigen).First();
            lblPostal.Text = objComunaOrigen.codigopostal;

            Comuna objComunaDestino = new Comuna();
            int idComunaDestino = Convert.ToInt32(regexNumerico(comDestino.Text));
            objComunaDestino = db.Comuna.Where(s => s.idComuna == idComunaDestino).First();

            int codigoPostalOrigen = Convert.ToInt32(objComunaOrigen.codigopostal);
            int codigoPostalDestino = Convert.ToInt32(objComunaDestino.codigopostal);
            
            if(codigoPostalDestino > codigoPostalOrigen)
            {
                codigoPostalTotal = (codigoPostalDestino - codigoPostalOrigen) + baseMudanza;

            }else if (codigoPostalDestino < codigoPostalOrigen)
            {
                codigoPostalTotal = (codigoPostalOrigen - codigoPostalDestino) + baseMudanza;

            }else if (codigoPostalDestino == codigoPostalOrigen)
            {
                codigoPostalTotal = baseMudanza;
            }

            codigoPostalTotal = codigoPostalTotal / 10;

            if (objCotizacion.servicioEmbalaje == true)
            {
                codigoPostalTotal += 30000;
            }
            if (objCotizacion.servicioPioneta == true)
            {
                codigoPostalTotal += 30000;
            }
            if (objCotizacion.servicioInventario == true)
            {
                codigoPostalTotal += 30000;
            }

        }
    }

    public string regexAlfabetico(string input)
    {
        string output;

        output = Regex.Replace(input, @"([0-9])+\.+\-","");

        return output;
    }

    public string regexNumerico(string input)
    {
        string output;

        //Se realiza un análisis de Regex al string enviado y se declara el resultado en otra variable
        output = Regex.Replace(input, @"[^\d]", "");

        return output;
    }//Fin regexNumerio
}
