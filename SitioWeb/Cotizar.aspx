﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cotizar.aspx.cs" Inherits="Cotizar" %>

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
        padding: 15px 50px 30px 30px;
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
    imgs{
        margin-left: 100px;
    }
    .auto-style15 {
    }
    .auto-style23 {
        height: 25px;
        width: 150px;
        }
        .auto-style27 {
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
        

        .auto-style66 {
            width: 116px;
            height: 24px;
        }
        .auto-style67 {
            width: 147px;
            height: 24px;
        }
        .auto-style68 {
            width: 62px;
            height: 24px;
        }
        .auto-style70 {
            width: 134px;
            height: 24px;
        }
        .auto-style71 {
            height: 24px;
        }
        .auto-style72 {
            width: 111px;
            height: 24px;
        }
        .auto-style73 {
            width: 150px;
            height: 24px;
        }
        

        .auto-style75 {
            width: 147px;
        }
        

        .auto-style76 {
            font-size: large;
            color: #CC3300;
        }
        .auto-style77 {
            color: #FF9933;
            font-size: large;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <table id="borde">
    <tr>
        <td class="auto-style58">
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
        <td class="auto-style63">
            <!--Buscar Expresion regular -->
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="*" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Dirección</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtCalle" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style49">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtCalle" ErrorMessage="*" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style60">Tipo de camión</td>
                <td class="auto-style48">
            <asp:DropDownList ID="DropListTVehiculo" runat="server">
            </asp:DropDownList>
        &nbsp;<!--<asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="DropListTVehiculo" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>-->
        </td>
    </tr>
    <tr>
        <td class="auto-style58">Apellidos</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtApellidos" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellidos" ErrorMessage="*" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Número</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtNumDir" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtNumDir" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Rut</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtRut" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtRut" ErrorMessage="*" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Comuna</td>
        <td class="auto-style64">
            <asp:DropDownList ID="droplistComuna" runat="server"></asp:DropDownList>
        <td>
            <!--<asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="droplistComuna" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>-->
        <td class="auto-style60"></td>
        <td class="auto-style50"></td>
    </tr>
    <tr>
        <td class="auto-style58">Telefono</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtTelefono" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Tipo de vivienda</td>
        <td class="auto-style64"> 
            <asp:TextBox ID="txtTVivienda" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtTVivienda" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style60"></td>
        <td class="auto-style47"></td>
    </tr>
    <tr>
        <td class="auto-style58">Email</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtEmail" runat="server" Width="175px" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Fecha de retiro</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtFecha" runat="server" Width="175px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style63">
            
        </td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"><strong>
            <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style76" Text="[lblMensaje]" Visible="False"></asp:Label>
            </strong></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Hora de retiro</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtHora" runat="server" Width="175px" TextMode="Time"></asp:TextBox>
        </td>
        <td class="auto-style63">
            
        </td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60">&nbsp;</td>
        <td class="auto-style48"></td>
    </tr>
    <tr>       
        <td class="auto-style58">
            <p class="redondela">2</p>
        </td>    
        <td class="titulo">Dirección de destino</td>
        <td class="auto-style63"></td>
        <td colspan="2"><strong>
            <asp:CheckBox ID="checkDatosDestino" runat="server" AutoPostBack="True" CssClass="auto-style77" OnCheckedChanged="checkDatosDestino_CheckedChanged" Text=" Recibe la misma persona" />
            </strong></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Nombre</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtNombreDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtNombreDestino" ErrorMessage="*" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Dirección de destino</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtCalleDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style49">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ControlToValidate="txtCalleDestino" ErrorMessage="*" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style60"></td>
    </tr>
    <tr>
        <td class="auto-style58">Apellidos</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtApellidosDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="txtApellidosDestino" ErrorMessage="*" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Número</td>
        <td class="auto-style64">
            <asp:TextBox ID="txtNumDirDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ControlToValidate="txtNumDirDestino" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style60">&nbsp;</td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Rut</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtRutDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="txtRutDestino" ErrorMessage="*" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Comuna</td>
        <td class="auto-style64">
            <asp:DropDownList ID="droplistComunaDestino" runat="server"></asp:DropDownList>
        </td>
        <td class="auto-style15">
            <!--<asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ControlToValidate="droplistComunaDestino" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>-->
        </td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Teléfono</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtTelefonoDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="txtTelefonoDestino" ErrorMessage="*" ValidationExpression="^\d*\d$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57">Tipo de vivienda</td>
        <td class="auto-style64">
             <asp:TextBox ID="txtTViviendaDestino" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ControlToValidate="txtTViviendaDestino" ErrorMessage="*" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Email</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtEmailDestino" runat="server" Width="175px" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ControlToValidate="txtEmailDestino" ErrorMessage="*" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Fecha de llegada</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtFechaLlegada" runat="server" Width="175px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style63">
            
        </td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Hora de llegada</td>
        <td class="auto-style62">
            <asp:TextBox ID="txtHoraLlegada" runat="server" Width="175px" TextMode="Time"></asp:TextBox>
        </td>
        <td class="auto-style63">
            
        </td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60">&nbsp;</td>
        <td class="auto-style48">
            &nbsp;</td>
    </tr>
      <tr>
        <td class="auto-style58">
            <p class="redondela">3</p>
        </td>
        <td class="titulo">Servicios Adicionales</td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style58">Peoneta</td>
        <td class="auto-style75">
            <asp:CheckBox ID="checkPeoneta" runat="server" />
            &nbsp;&nbsp;
            <img class="imgs" src="IMG/peoneta.png"/>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64">&nbsp;</td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style66"></td>
        <td class="auto-style67"></td>
        <td class="auto-style68"></td>
        <td class="auto-style69"></td>
        <td class="auto-style70"></td>
        <td class="auto-style71"></td>
        <td class="auto-style72"></td>
        <td class="auto-style73"></td>
    </tr>
    <tr>
        <td class="auto-style58">Embalaje</td>
        <td class="auto-style75">
            <asp:CheckBox ID="checkEmbalaje" runat="server" />
            &nbsp;&nbsp;
            <img class="imgs" src="IMG/embalaje.png"/>
        </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
            <tr>
        <td class="auto-style58">&nbsp;</td>
        <td class="auto-style62"></td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
     <tr>
        <td class="auto-style58">Inventario</td>
        <td class="auto-style75">
            <asp:CheckBox ID="checkInventario" runat="server" />
            &nbsp;&nbsp;
            <img class="imgs" src="IMG/inventario.png"/>

         </td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60">
           <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btnSiguiente" OnClick="btnSiguiente_Click"/>
        </td>
        <td class="auto-style48"></td>
    </tr>
     <tr>
        <td class="auto-style58">&nbsp;</td>
        <td class="auto-style62"></td>
        <td class="auto-style63"></td>
        <td class="auto-style57"></td>
        <td class="auto-style64"></td>
        <td class="auto-style15"></td>
        <td class="auto-style60"></td>
        <td class="auto-style48"></td>
    </tr>
</table>
    <br />
</asp:Content>

