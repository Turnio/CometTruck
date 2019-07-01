<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cotizar.aspx.cs" Inherits="Cotizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #borde {
        border-radius: 0px 25px 25px 25px;
        color: #336666;
        border: 7px solid #ff9933;
        /*height: 400px;*/ 
        text-align: unset;
        width: 70%;
        margin: 0 auto;
        padding: 15px 0px 30px 30px;
        font-size: 14px;
        }
    input{
        border-radius: 20px;
    }
    .redondela{
        border-radius: 100%;
        background: #ff9933;
        color:#ffffff;
        font-size: 18px;
        height: 1px; 
        padding: 10px 15px 30px 15px;
        text-align: center;
        width: 15px;
    }
    .btnSiguiente{
        background: #ff9933;
        border-radius: 20px;
        color:#ffffff;
        font-size: 20px;
        height:30px;
        width:150px;
    }
    .titulo{
       font-size: 18px;
       font-weight: bold; 
    }
    .auto-style15 {
    }
    .auto-style23 {
        height: 26px;
        width: 150px;
        }
        .auto-style27 {
        }
        .auto-style34 {
            width: 147px;
        }
        .auto-style47 {
            width: 150px;
        }
        .auto-style48 {
            width: 150px;
        }
        .auto-style49 {
            width: 20px;
        }
        .auto-style50 {
            width: 36px;
        }
        .auto-style57 {
            width: 115px;
        }
        .auto-style58 {
            width: 116px;
        }
                

        .auto-style60 {
            width: 111px;
        }
        

        .auto-style62 {
            width: 147px;
        }
        .auto-style63 {
            width: 62px;
        }
        .auto-style64 {
            width: 134px;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <table id="borde">
    <tr>
        <td class="auto-style58" colspan="">
            <p class="redondela">1</p>
        </td>    
        <td class="titulo">Dirección de origen</td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style27"></td>
        <td class="auto-style60"></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style58">Nombre</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtNombre" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Dirección</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtCalle" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style49"></td>
        <td class="auto-style60">Tipo de camión</td>
                <td class="auto-style48">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style58">Apellidos</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtApellidos" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Número</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtNumDir" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Rut</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtRut" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Comuna</td>
        <td class="auto-style64">
            <asp:DropDownList ID="droplistComuna" runat="server"></asp:DropDownList>
        <td>
        <td class="auto-style60"></td>
        <td class="auto-style50"></td>
    </tr>
    <tr>
        <td class="auto-style58">Telefono</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtTelefono" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Tipo de vivienda</td>
        <td class="auto-style64"> 
            <asp:TextBox ID="txtTVivienda" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style47"></td>
    </tr>
    <tr>
        <td class="auto-style58">Email</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtEmail" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Fecha de retiro</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtFecha" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Hora de retiro</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtHora" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>       
        <td class="auto-style58">
            <p class="redondela">2</p>
        </td>    
        <td class="titulo">Dirección de destino</td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Nombre</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtNombreDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Dirección de destino</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtCalleDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style49"></td>
        <td class="auto-style60"></td>
    </tr>
    <tr>
        <td class="auto-style58">Apellidos</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtApellidosDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Número</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtNumDirDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Rut</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtRutDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Comuna</td>
        <td class="auto-style64">
            <asp:DropDownList ID="droplistComunaDestino" runat="server"></asp:DropDownList>
        </td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Teléfono</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtTelefonoDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57">Tipo de vivienda</td>
        <td class="auto-style64">
             <asp:TextBox ID="txtTViviendaDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Email</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtEmailDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Fecha de llegada</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtFechaLlegada" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Hora de llegada</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtHoraLlegada" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60">
            <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btnSiguiente"/>
        </td>
        <td class="auto-style48"></td>
    </tr>
</table>
    <br />
</asp:Content>

