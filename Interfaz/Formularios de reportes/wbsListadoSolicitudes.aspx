﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wbsListadoSolicitudes.aspx.cs" Inherits="Control_de_viaticos.Formularios_de_reportes.wbsListadoSolicitudes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link href="../Estilos/estilosboton.css" rel="stylesheet" />
        <link href="../Estilos/estilostxt.css" rel="stylesheet" />
   <div>
        <table style="width: 100%;">
           
           <tr>
                <td colspan="3"><asp:Button ID="btnVolver" runat="server" Text="Volver" Height="34px" Width="77px" OnClick="btnVolver_Click" CssClass="boton" />
                    <h1 align="center">Listado de solicitudes</h1>
               </td>
           </tr>
           
           <tr>
                <td colspan="3">
                   <p align="center">
             <asp:GridView ID="gvwListadoSolicitudes" runat="server"  AutoGenerateColumns="False" >
             <Columns>            
             <asp:BoundField HeaderText="Nombre del funcionario" />
             <asp:BoundField HeaderText="ID Solicitud" />
             <asp:BoundField HeaderText="Fecha solicitada" />
             </Columns>
             </asp:GridView>
                    </p>
                </td>
           </tr>
           
           <tr>
                <td>
                    <p align="center">
                         <asp:Label ID="lblFechaInicio" runat="server" Text="Fecha de inicio"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
                <td>&nbsp;</td>
                <td>
                      <p  align="center">
                          <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Height="24px" Width="135px" CssClass="boton2" />
                    </p>
                </td>
           </tr>
           
            </table>
    </div>
    </form>
</body>
</html>
