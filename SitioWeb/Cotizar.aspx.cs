using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cotizar : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try{
            //Llamado a los metodos para definir los dropList desde la base de datos
            if (!IsPostBack)
            {
                definirDropListComuna();
                definirDropListVehiculo();
            }

        }
        catch (Exception ex)
        {
            lblMensaje.Text = "Hubo en error";
        }
        
    }



    /// <summary>
    /// Define los droplist de comuna dentro del formulario
    /// </summary>
    public void definirDropListComuna()
    {

        //Conexión a la BD
        using (SampleEntityFramework db = new SampleEntityFramework())
        {
            var list = db.Comuna;


            droplistComuna.Items.Add("-- Seleccionar item --");
            droplistComunaDestino.Items.Add("-- Seleccionar item --");
            foreach (var objComuna in list)
            {
                droplistComuna.Items.Add(objComuna.idComuna + ".- " + objComuna.nombre);
                droplistComunaDestino.Items.Add(objComuna.idComuna + ".- " + objComuna.nombre);
            }

        }
    }

    /// <summary>
    /// Define los droplist de tipos de vehiculos dentro del formulario
    /// </summary>
    public void definirDropListVehiculo()
    {

        //Conexión a la base de datos
        using (SampleEntityFramework db = new SampleEntityFramework())
        {
            var list = db.Vehiculo;

            DropListTVehiculo.Items.Add("-- Seleccionar item --");
            foreach (var objVehiculo in list)
            {
                DropListTVehiculo.Items.Add(objVehiculo.idVehiculo + ".- " + objVehiculo.tipo);
            }
        }

    }

    protected void btnSiguiente_Click(object sender, EventArgs e)
    {
        
        if (txtNombre.Text==""||txtApellidos.Text==""||txtApellidosDestino.Text==""||txtCalle.Text==""||txtCalleDestino.Text==""||txtEmail.Text==""
            ||txtEmailDestino.Text==""||txtFecha.Text==""||txtFechaLlegada.Text==""||txtHora.Text==""||txtHoraLlegada.Text==""||txtNombreDestino.Text==""
            ||txtNumDir.Text==""||txtNumDirDestino.Text==""||txtRut.Text==""||txtRutDestino.Text==""||txtTelefono.Text==""||txtTelefonoDestino.Text==""
            ||txtTVivienda.Text==""||txtTViviendaDestino.Text==""
            )
        {
            lblMensaje.Text = "Debe ingresar todos los datos solicitados";
            lblMensaje.Visible = true;
            //asd
        }
        else
        {
            try
            {
                
                Cotizacion objCotizacion = new Cotizacion();
                objCotizacion.nombre = txtNombre.Text;
                objCotizacion.apellidos = txtApellidos.Text;
                objCotizacion.rut = txtRut.Text;
                objCotizacion.telefono = Convert.ToInt64(txtTelefono.Text);
                objCotizacion.email = txtEmail.Text;
                objCotizacion.fechaInicio = Convert.ToDateTime(txtFecha.Text);
                objCotizacion.horaInicio = TimeSpan.Parse(txtHora.Text);
                objCotizacion.calleOrigen = txtCalle.Text;
                objCotizacion.numeroOrigen = txtNumDir.Text;
                objCotizacion.comunaOrigen = droplistComuna.SelectedItem.Text;
                objCotizacion.tipoviviendaOrigen = txtTVivienda.Text;

                objCotizacion.nombreReceptor = txtNombreDestino.Text;
                objCotizacion.apellidoReceptor = txtApellidosDestino.Text;
                objCotizacion.rutReceptor = txtRutDestino.Text;
                objCotizacion.telefonoReceptor = Convert.ToInt64(txtTelefonoDestino.Text);
                objCotizacion.emailReceptor = txtEmailDestino.Text;
                objCotizacion.fechaTermino = Convert.ToDateTime(txtFecha.Text);
                objCotizacion.horaTermino = TimeSpan.Parse(txtHoraLlegada.Text);
                objCotizacion.calleDestino = txtCalleDestino.Text;
                objCotizacion.numeroDestino = txtNumDirDestino.Text;
                objCotizacion.comunaDestino = droplistComunaDestino.SelectedItem.Text;
                objCotizacion.tipoviviendaDestino = txtTViviendaDestino.Text;

                objCotizacion.tipoVehiculo = DropListTVehiculo.SelectedItem.Text;

                objCotizacion.servicioEmbalaje = checkEmbalaje.Checked;
                objCotizacion.servicioInventario = checkInventario.Checked;
                objCotizacion.servicioPioneta = checkPeoneta.Checked;

                Session["cotizacion"] = objCotizacion;

                Response.Redirect("cotizarResumen.aspx");

            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Hubo un error en el ingreso de Datos";
                lblMensaje.Visible = true;
            }
        }
        
    }

    //Elimina los caracteres alfabeticos de un string
    public string regexNumerico(string input)
    {
        string output;

        //Se realiza un análisis de Regex al string enviado y se declara el resultado en otra variable
        output = Regex.Replace(input, @"[^\\d]", "");

        return output;
    }//Fin regexNumerio

    protected void checkDatosDestino_CheckedChanged(object sender, EventArgs e)
    {
        if (checkDatosDestino.Checked == true)
        {
            txtNombreDestino.Text = txtNombre.Text;
            txtApellidosDestino.Text = txtApellidos.Text;
            txtRutDestino.Text = txtRut.Text;
            txtTelefonoDestino.Text = txtTelefono.Text;
            txtEmailDestino.Text = txtEmail.Text;

            txtNombreDestino.Enabled = false;
            txtApellidosDestino.Enabled = false;
            txtRutDestino.Enabled = false;
            txtTelefonoDestino.Enabled = false;
            txtEmailDestino.Enabled = false;

        }
        else if (checkDatosDestino.Checked == false)
        {
            txtNombreDestino.Text = "";
            txtApellidosDestino.Text = "";
            txtRutDestino.Text = "";
            txtTelefonoDestino.Text = "";
            txtEmailDestino.Text = "";

            txtNombreDestino.Enabled = true;
            txtApellidosDestino.Enabled = true;
            txtRutDestino.Enabled = true;
            txtTelefonoDestino.Enabled = true;
            txtEmailDestino.Enabled = true;
        }
    }

    public string regexAlfabetico(string input)
    {
        string output;

        output = Regex.Replace(input, "([0-9])+\\.+\\-", "");

        return output;
    }

}