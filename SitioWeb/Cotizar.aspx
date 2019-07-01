<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cotizar.aspx.cs" Inherits="Cotizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 90%;
    }
    .auto-style6 {
        width: 145px;
    }
    .auto-style7 {
        width: 40px;
    }
    .auto-style8 {
        width: 130px;
    }
    .auto-style9 {
        width: 161px;
    }
    .auto-style10 {
        width: 93px;
    }
    .auto-style11 {
        width: 145px;
        height: 26px;
    }
    .auto-style12 {
        width: 130px;
        height: 26px;
    }
    .auto-style13 {
        width: 40px;
        height: 26px;
    }
    .auto-style14 {
        width: 161px;
        height: 26px;
    }
    .auto-style15 {
        height: 26px;
    }
    .auto-style16 {
        width: 93px;
        height: 26px;
    }
    .auto-style21 {
        width: 101px;
    }
    .auto-style22 {
        height: 26px;
        width: 101px;
    }
        .auto-style23 {
            height: 25px;
        }
        .auto-style24 {
            width: 40px;
            height: 25px;
        }
        .auto-style25 {
            width: 161px;
            height: 25px;
        }
        .auto-style26 {
            width: 93px;
            height: 25px;
        }
        .auto-style27 {
            width: 101px;
            height: 25px;
        }
        .auto-style28 {
            width: 51px;
            height: 25px;
        }
        .auto-style29 {
            width: 51px;
            height: 26px;
        }
        .auto-style30 {
            width: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="auto-style5" align="center">
    <tr>
        <td colspan="2" class="auto-style23">Dirección de origen</td>
        <td class="auto-style24"></td>
        <td class="auto-style25"></td>
        <td class="auto-style26"></td>
        <td class="auto-style27"></td>
        <td class="auto-style28"></td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style11">Nombre</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style13"></td>
        <td class="auto-style14">Dirección de origen</td>
        <td class="auto-style15" colspan="2">
            <asp:TextBox ID="txtCalle" runat="server" Width="202px"></asp:TextBox>
        </td>
        <td class="auto-style29">&nbsp;</td>
        <td class="auto-style15">Tipo de camión</td>
    </tr>
    <tr>
        <td class="auto-style6">Apellidos</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">
            <asp:DropDownList ID="droplistComuna" runat="server">
            </asp:DropDownList>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="txtTVivienda" runat="server" Width="102px"></asp:TextBox>
        </td>
        <td class="auto-style30">&nbsp;</td>
        <td>
            <asp:DropDownList ID="droplistTCamion" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Rut</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">Telefono</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style16"></td>
        <td class="auto-style22"></td>
        <td class="auto-style29"></td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style6">Email</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Fecha de retiro</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Hora de retiro</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtHora" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">Dirección de destino</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Nombre</td>
        <td>
            <asp:TextBox ID="txtNombreDestino" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">Dirección de destino</td>
        <td colspan="2">
            <asp:TextBox ID="txtCalleDestino" runat="server" Width="195px"></asp:TextBox>
        </td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Apellidos</td>
        <td>
            <asp:TextBox ID="txtApellidosDestino" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">
            <asp:DropDownList ID="droplistComunaDestino" runat="server">
            </asp:DropDownList>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="txtTViviendaDestino" runat="server" Width="103px"></asp:TextBox>
        </td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Rut</td>
        <td>
            <asp:TextBox ID="txtRutDestino" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Teléfono</td>
        <td>
            <asp:TextBox ID="txtTelefonoDestino" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtEmailDestino" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Fecha de llegada</td>
        <td>
            <asp:TextBox ID="txtFechaLlegada" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Hora de llegada</td>
        <td>
            <asp:TextBox ID="txtHoraLlegada" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" />
        </td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    <br />
</asp:Content>

