<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #borde{
        border-radius: 0px 25px 25px 25px;
        color: #336666;
        border: 7px solid #ff9933;
        height: 200px; 
        text-align: unset;
        width: 600px;
        }
        h1{
           text-align: center;
        }
        .camion{
            padding-left: 40%;
            /*width: 400px;*/
        }
        .auto-style7 {
            width: 114px;
        }
        .auto-style8 {
            position: relative;
            left: -4px;
            top: 3px;
            height: 162px;
            text-align: center;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td class="auto-style7"></td>
            <td id="borde">
                <h1>BIENVENIDOS A RETIRALO</h1>
                  <p class="auto-style8"> 
                      Un servicio veloz y confiable<br />
                  </p>
            </td>
            <td><img class="camion" src="IMG/camion.png"  /></td>
        </tr>
    </table>

</asp:Content>

