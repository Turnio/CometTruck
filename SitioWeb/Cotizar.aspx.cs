using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cotizar : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //Llamado a los metodos para definir los dropList desde la base de datos
        if (!IsPostBack)
        {
            definirDropListComuna();
            definirDropListVehiculo();
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

            droplistTVehiculo.Items.Add("-- Seleccionar item --");
            foreach (var objVehiculo in list)
            {
                droplistTVehiculo.Items.Add(objVehiculo.idVehiculo + ".- " + objVehiculo.tipo);
            }
        }

    }
}