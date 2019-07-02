<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cotizarResumen.aspx.cs" Inherits="cotizarResumen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      #borde {
        border-radius: 0px 25px 25px 25px;
        color: #336666;
        border: 7px solid #ff9933;
        /*height: 400px;*/ 
        text-align: unset;
        width: 90%;
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
    .btnSiguiente{
        background: #ff9933;
        border-radius: 20px;
        color:#ffffff;
        font-size: 20px;
        height:30px;
        width:150px;
    }
        .auto-style6 {
            width: 66px;
        }
        .auto-style7 {
            font-size: 18px;
            font-weight: bold;
            width: 183px;
        }
        .auto-style8 {
        width: 183px;
    }
     .auto-style9 {
        width: 66px;
        height: 24px;
    }
    .auto-style10 {
        width: 183px;
        height: 24px;
    }
    .auto-style11 {
        height: 24px;
    }
    .auto-style12 {
        width: 171px;
    }
    .auto-style13 {
        height: 24px;
        width: 171px;
    }
        .auto-style14 {
        width: 180px;
    }
        .auto-style15 {
            height: 24px;
            width: 180px;
        }
        .auto-style16 {
            width: 152px;
        }
        .auto-style17 {
            height: 24px;
            width: 152px;
        }
        .auto-style18 {
        width: 161px;
    }
        .auto-style19 {
            width: 161px;
            height: 24px;
        }
     .auto-style22 {
        width: 270px;
    }
    .auto-style23 {
        height: 24px;
        width: 270px;
    }
    .auto-style24 {
        width: 266px;
    }
    .auto-style25 {
        width: 266px;
        height: 24px;
    }
    .auto-style26 {
        width: 231px;
    }
    .auto-style27 {
        width: 231px;
        height: 24px;
    }
     </style>   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
     <br />

    <table id="borde">
        <tr>
            <td class="auto-style6">
                <p class="redondela">3</p>
            </td>
            <td class="auto-style7">Resumen Cotización</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"> </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">Dirección de origen</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12">Dirección de destino</td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">Fecha de comienzo</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12">Fecha de finalización</td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style25"></td>
            <td class="auto-style27"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style15"></td>
            <td class="auto-style17"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">Encargado</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12">Encargado de recepción</td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8"></td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style8"></td>
            <td class="auto-style22"></td>
            <td class="auto-style24"></td>
            <td class="auto-style26"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16">
               <asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" CssClass="btnSiguiente"/>
            </td>
            <td></td>
        </tr>
    </table>

</asp:Content>

