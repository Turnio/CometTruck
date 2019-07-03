<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cotizarResumen.aspx.cs" Inherits="cotizarResumen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      #borde {
        border-radius: 0px 25px 25px 25px;
        color: #336666;
        border: 7px solid #ff9933;
        /*height: 400px;*/ 
        text-align: unset;
        width: 75%;
        margin: 0 auto;
        padding: 15px 10px 30px 30px;
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
        /*width: 15px;*/
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
            width: 639px;
        }
        .auto-style9 {
        width: 66px;
        height: 24px;
    }
    .auto-style12 {
            width: 208px;
            opacity: 0.6;
        }
        .auto-style16 {
            width: 586px;
        }
        .auto-style28 {
            width: 639px;
            opacity: 0.6;
        }
        .auto-style30 {
            width: 28px;
        }
        .auto-style31 {
            height: 24px;
            width: 28px;
        }
        .auto-style33 {
            height: 24px;
            width: 106px;
            text-align: left;
        }
        .auto-style35 {
            width: 106px;
            text-align: left;
            }
        .auto-style38 {
            width: 241px;
        }
        .auto-style39 {
            width: 106px;
        }
        .auto-style40 {
            width: 416px;
        }
        .auto-style41 {
            height: 24px;
            width: 416px;
        }
        .auto-style44 {
            height: 24px;
            width: 586px;
        }
        .auto-style45 {
            height: 24px;
            width: 241px;
        }
        .auto-style46 {
            width: 445px;
        }
        .auto-style47 {
            height: 24px;
            width: 445px;
        }
        .auto-style48 {
            height: 24px;
            width: 639px;
        }
        .auto-style49 {
            width: 586px;
            opacity: 0.65;
        }
        .auto-style50 {
            border-radius: 20px;
            color: #ffffff;
            font-size: large;
            height: 30px;
            width: 150px;
            background: #ff9933;
        }
        .auto-style51 {
            color: #CC3300;
            font-size: x-large;
        }
        .auto-style52 {
            width: 639px;
            opacity: 0.6;
            height: 24px;
        }
        .auto-style53 {
            width: 208px;
            opacity: 0.6;
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
                <p class="redondela">4</p>
            </td>
            <td class="auto-style7">Resumen cotización</td>
            <td class="auto-style39"></td>
            <td class="auto-style40"></td>
            <td class="auto-style30"></td>
            <td class="auto-style38"></td>
            <td class="auto-style46"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28"><strong>Dirección de origen</strong></td>
            <td class="auto-style35">
                <asp:Label ID="dirOrigen" runat="server" Text="Brown Norte"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:Label ID="numOrigen" runat="server" Text="209"></asp:Label>
            </td>
            <td class="auto-style12"><strong>Dirección de destino</strong></td>
            <td class="auto-style38">
                <asp:Label ID="dirDestino" runat="server" Text="San Diego"></asp:Label>
            </td>
            <td class="auto-style46">
                <asp:Label ID="numDestino" runat="server" Text="2156"></asp:Label>
            </td>
            <td class="auto-style49"><strong>Servicios Adicionales</strong></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style35">
                <asp:Label ID="comOrigen" runat="server" Text="Ñuñoa"></asp:Label>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style12"></td>
            <td class="auto-style38">
                <asp:Label ID="comDestino" runat="server" Text="Santiago"></asp:Label>
            </td>
            <td class="auto-style46"></td>
            <td class="auto-style16"></td>

        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28"></td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style40"></td>
            <td class="auto-style12"></td>
            <td class="auto-style38"></td>
            <td class="auto-style46"></td>
            <td class="auto-style16">
                <asp:Label ID="lblPeoneta" runat="server" Text="Peoneta"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28"><strong>Fecha de comienzo</strong></td>
            <td class="auto-style35">
                <asp:Label ID="fechaOrigen" runat="server" Text="21-06-2019"></asp:Label>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style12"><strong>Fecha de finalización</strong></td>
            <td class="auto-style38">
                <asp:Label ID="fechaDestino" runat="server" Text="21-06-2019"></asp:Label>
            </td>
            <td class="auto-style46"></td>
            <td class="auto-style16">
                <asp:Label ID="lblEmbalaje" runat="server" Text="Embalaje"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style52"><strong>Hora de inicio</strong></td>
            <td class="auto-style33">
                <asp:Label ID="horaOrigen" runat="server" Text="9:00"></asp:Label>
            </td>
            <td class="auto-style41"></td>
            <td class="auto-style53"><strong>Hora de finalización</strong></td>
            <td class="auto-style45">
                <asp:Label ID="horaDestino" runat="server" Text="17:00"></asp:Label>
            </td>
            <td class="auto-style47"></td>
            <td class="auto-style44">
                <asp:Label ID="lblInventario" runat="server" Text="Inventario"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style48">&nbsp;</td>
            <td class="auto-style33"></td>
            <td class="auto-style41"></td>
            <td class="auto-style31"></td>
            <td class="auto-style45"></td>
            <td class="auto-style47"></td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28"><strong>Encargado</strong></td>
            <td class="auto-style35">
                <asp:Label ID="nomOrigen" runat="server" Text="Juan Carlos"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:Label ID="apeOrigen" runat="server" Text="Perez Santelices"></asp:Label>
            </td>
            <td class="auto-style12"><strong>Encargado de recepción</strong></td>
            <td class="auto-style38">
                <asp:Label ID="nomDestino" runat="server" Text="Florencia Andrea"></asp:Label>
            </td>
            <td class="auto-style46">
                <asp:Label ID="apeDestino" runat="server" Text="Gomez Soto"></asp:Label>
            </td>
            <td class="auto-style16"><strong>Tipo de camión</strong>:
                <asp:Label ID="lblTCamion" runat="server" Text="Container"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style35">
                <asp:Label ID="rutOrigen" runat="server" Text="13.852.123-4"></asp:Label>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style12"></td>
            <td class="auto-style38">
                <asp:Label ID="rutDestino" runat="server" Text="14.042.356-2"></asp:Label>
            </td>
            <td class="auto-style46"></td>
            <td class="auto-style16"></td>

        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28"></td>
            <td class="auto-style35">
                <asp:Label ID="telOrigen" runat="server" Text="+56961234567"></asp:Label>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style12"></td>
            <td class="auto-style38">
                <asp:Label ID="telDestino" runat="server" Text="+56951234897"></asp:Label>
            </td>
            <td class="auto-style46"></td>
            <td class="auto-style16"><strong>
                <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style51" Text="[lblMensaje]" Visible="False"></asp:Label>
                </strong></td>

        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style28">
                <asp:Label ID="lblPostal" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style39">
                <asp:Label ID="lblEmailOrigen" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style12"></td>
            <td class="auto-style38">
                <asp:Label ID="lblEmailDestino" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style46"></td>
            <td class="auto-style16">
               <asp:Button ID="btnSiguiente" runat="server" Text="Enviar Cotización" CssClass="auto-style50" OnClick="btnSiguiente_Click"/>
            </td>

        </tr>
    </table>

</asp:Content>

