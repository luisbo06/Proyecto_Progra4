<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wbsSolicitudDeViaticos.aspx.cs" Inherits="Control_de_viaticos.wbsSolicitudDeViaticos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Estilos/estilostxt.css" rel="stylesheet" />
    <link href="../Estilos/estilosboton.css" rel="stylesheet" />
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td colspan="3"><asp:Button ID="btnVolver" runat="server" Text="Volver" Height="34px" Width="77px" OnClick="btnVolver_Click" CssClass="boton" />
                    <h1 align="center"  > Solicitud de viaticos</h1>
               </td>
           </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre:   "></asp:Label>
                    <asp:Label ID="lblNombreGenerado" runat="server" Text="Nombre Generado"></asp:Label>
               </td>
           </tr>
            <tr>
                <td colspan="3">
                <h3 align="center">Fechas y horas</h3>
                </td>
           </tr>
            <tr>
                <td >
                     <p align="center">
                         <asp:Label ID="lblFechaSalida" runat="server" Text="Fecha y hora de salida"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtFechaHoraSalida" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFechaHoraSalida" Display="Dynamic" ErrorMessage="Formato de fecha y hora de salida incorrecto" ForeColor="Red" ValidationExpression="^\d{2}\/\d{2}\/\d{4} \d{2}\:\d{2}$">Seguir el formato: ##/##/#### ##:##</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFechaHoraSalida" Display="Dynamic" ErrorMessage="Fecha y hora de salida no debe omitirce" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>

                </td>
    
                 <td>
                   <p align="center">
                         <asp:Label ID="lblFechaRegreso" runat="server" Text="Fecha y hora de regreso"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtFechaHoraRegreso" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFechaHoraRegreso" Display="Dynamic" ErrorMessage="Formato incorrecto de fecha y hora de salida" ForeColor="Red" ValidationExpression="^\d{2}\/\d{2}\/\d{4} \d{2}\:\d{2}$">Seguir el formato: ##/##/#### ##:##</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaHoraRegreso" Display="Dynamic" ErrorMessage="Fecha y hora de regreso no debe omitirce" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
                </td>
                <td>
                 
                     <p align="center">
                         <asp:Label ID="lblFechaReciboViaticos" runat="server" Text="Fecha para recibir viaticos"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtFechaReciboDeViaticos" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtFechaReciboDeViaticos" Display="Dynamic" ErrorMessage="Formato incorrecto de fecha para recibir viaticos" ForeColor="Red" ValidationExpression="^\d{2}\/\d{2}\/\d{4} $">Seguir el formato: ##/##/####</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFechaReciboDeViaticos" Display="Dynamic" ErrorMessage="Fecha para recibir viaticos no debe omitirce" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
                </td>
           </tr>
            <tr>
                <td >
                     <p align="center">
                         <asp:Label ID="lblFechaEntradaHotel" runat="server" Text="Fecha de entrada al hotel"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtFechaEntradaHotel" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFechaEntradaHotel" Display="Dynamic" ErrorMessage="Formato incorrecto de fecha de entrada al hotel" ForeColor="Red" ValidationExpression="^\d{2}\/\d{2}\/\d{4} $">Seguir el formato: ##/##/####</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFechaEntradaHotel" Display="Dynamic" ErrorMessage="Fecha de entrada al hotel no debe omitirce" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
               </td>
                <td>
                     <p align="center">
                         <asp:Label ID="Label5" runat="server" Text="Fecha de salida al hotel"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtFechaSalidaHotel" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtFechaSalidaHotel" Display="Dynamic" ErrorMessage="Formato incorrecto de fecha de salida al hotel" ForeColor="Red" ValidationExpression="^\d{2}\/\d{2}\/\d{4} $">Seguir el formato: ##/##/####</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFechaSalidaHotel" Display="Dynamic" ErrorMessage="Fecha de salida al hotel no debe omitirce" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
               </td>
               
            </tr>
             <tr>
                <td >
                     <p align="center">
                          &nbsp;</p>
                     <p  align="center">
                          &nbsp;</p>
               </td>
                <td>
                     <p align="center">
                          &nbsp;</p>
                     <p  align="center">
                          &nbsp;</p>
                </td>              
           </tr>
            <tr>
                 <td colspan="3" >
                       <h3 align="center">Detalles</h3></td>
                </td>

           </tr>
            <tr>
                 <td colspan="3" >
                    <p align="center">
                          <asp:Label ID="lblDestino" runat="server" Text="Destino"></asp:Label>
                   </p>
                    <p  align="center">
                           <asp:TextBox ID="txtDestino" runat="server" CssClass="txtFormulario"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDestino" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                   </p>
                 </td>
           </tr>
            <tr>
                <td colspan="3" >        
                    <p  align="center">
                        <asp:Label ID="lblJustificacion" runat="server" Text="Justificacion:     " height="60px"></asp:Label>
                       
                    <br />
                          <asp:TextBox ID="txtJustificacion" runat="server" Height="100px" Width="455px" TextMode="MultiLine" CssClass="txtFormulario"></asp:TextBox>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtJustificacion" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                          
                   </p>

                </td>

           </tr>
            <tr>
                <td colspan="3" >
                    <h3 align="center">Cantidad de viaticos</h3></td>

           </tr>
            <tr>
                <td >
                    <p align="center">
                        <asp:Label ID="lblCantidadDesayunos" runat="server" Text="Cantidad de desayunos"></asp:Label>
                    </p>
                    <p  align="center">
                        <asp:TextBox ID="txtCantidadDesayunos" runat="server" CssClass="txtFormulario"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCantidadDesayunos" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCantidadDesayunos" ForeColor="Red">Máximo 5 desayunos</asp:RangeValidator>
                    </p>

                </td>
                <td>
                     <p align="center">
                       <asp:Label ID="lblCantidadAlmuerzos" runat="server" Text="Cantidad de almuerzos"></asp:Label>
                    </p>
                     <p  align="center">
                       <asp:TextBox ID="txtCantidadAlmuerzos" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCantidadAlmuerzos" ErrorMessage="Campo requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCantidadAlmuerzos" ForeColor="Red">Máximo 5 almuerzos</asp:RangeValidator>
                    </p>
                <td>
                     <p align="center">
                       <asp:Label ID="lblCantidadCenas" runat="server" Text="Cantidad de cenas"></asp:Label>
                    </p>
                     <p  align="center">
                       <asp:TextBox ID="txtCantidadCenas" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCantidadCenas" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtCantidadCenas" ForeColor="Red">Máximo 4 cenas</asp:RangeValidator>
                    </p>
           </tr>
            <tr>
                <td >
                     <p align="center">
                       <asp:Label ID="lblCantidadPasajes" runat="server" Text="Cantidad de pasajes"></asp:Label>
                    </p>
                     <p  align="center">
                       <asp:TextBox ID="txtCantidadPasajes" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCantidadPasajes" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtCantidadPasajes" ForeColor="Red">Máximo 5 pasajes</asp:RangeValidator>
                    </p>
                <td>
                     <p align="center">
                       <asp:Label ID="lblCantidadViaticos" runat="server" Text="Cantidad de viaticos"></asp:Label>
                    </p>
                     <p  align="center">
                       <asp:TextBox ID="txtCantidadViaticos" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCantidadViaticos" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtCantidadViaticos" ForeColor="Red">Máximo 5 hospedajes</asp:RangeValidator>
                    </p>
                </td>
                 <td>
                     <p align="center">
                         &nbsp;</p>
                     <p  align="center">
                         &nbsp;</p>
                </td>
           </tr>
            <tr>
                <td colspan="3" >
                     <h3 align="center">Montos</h3>
                </td>
           </tr>
            <tr>
                <td >
                      <p align="center">
                         <asp:Label ID="lblMontoDesayuno" runat="server" Text="Monto de desayunos"></asp:Label>
                     </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoDesayuno" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtMontoDesayuno" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Requerido</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtMontoDesayuno" Display="Dynamic" ErrorMessage="Formato incorrecto" ForeColor="Red" ValidationExpression="\d{4}">Solo números</asp:RegularExpressionValidator>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblMontoAlmuerzos" runat="server" Text="Monto de almuerzos"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoAlmuerzo" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtMontoAlmuerzo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Requerido</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtMontoAlmuerzo" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="\d{4}">Solo números</asp:RegularExpressionValidator>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblMontoCena" runat="server" Text="Monto de cenas"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoCena" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtMontoPasajeColaborador" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Requerido</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtMontoCena" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="\d{4}">Solo números</asp:RegularExpressionValidator>
                    </p>
                </td>
           </tr>
            <tr>
                <td >
                     <p align="center">
                         <asp:Label ID="lblMontoPasaje" runat="server" Text="Monto de pasajes"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoPasajes" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtMontoPasajes" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Requerido</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtMontoPasajes" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="\d{5}">Solo números</asp:RegularExpressionValidator>
                    </p>
                </td>
                 <td>
                     <p align="center">
                         <asp:Label ID="lblMontoHospedajes" runat="server" Text="Monto de hospedajes"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoHospedajes" runat="server" CssClass="txtFormulario"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtMontoHospedajes" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Requerido</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtMontoHospedajes" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="\d{6}">Solo números</asp:RegularExpressionValidator>
                    </p>
                </td>               
           </tr>
            <tr>
                <td colspan="3" >
                     <h3 align="center">Transporte y lugares</h3>
               </td>
           </tr>
            <tr>
                <td >
                     <p align="center">
                          <asp:Label ID="lblTipoTransporte" runat="server" Text="Tipo de transporte"></asp:Label>
                    </p>
                     <p  align="center">
                    <asp:DropDownList ID="ddTipoTransporte" runat="server" CssClass="txtFormulario">
                         </asp:DropDownList>
                    </p>
                </td>
                <td>
                     <p align="center">
                        <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                    </p>
                     <p  align="center">
                     <asp:DropDownList ID="ddProvincia" runat="server" CssClass="txtFormulario">
                         </asp:DropDownList>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblCanton" runat="server" Text="Canton"></asp:Label>
                    </p>
                     <p  align="center">
                       <asp:DropDownList ID="ddCanton" runat="server" CssClass="txtFormulario">
                         </asp:DropDownList>
                    </p>
                </td>
           </tr>
            <tr>
                <td colspan="3" >
                       <h3 align="center">Colaboradores</h3>
                </td>

           </tr>
            <tr>
                <td colspan="3" >
                     <p align="center">
                        <asp:Label ID="lblNombreColaborador" runat="server" Text="Nombre del colaborador"></asp:Label>
                    </p>
                     <p  align="center">
                        <asp:TextBox ID="txtNombreColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
           </tr>
            <tr>
                <td colspan="3" >
                      <h3 align="center"> Cantidad de viaticos del colaborador</h3>
               </td>

           </tr>
            <tr>
                <td >
                     <p align="center">
                         <asp:Label ID="lblCantidadDesayunosColaborador" runat="server" Text="Cantidad de desayunos"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtCantidadDesayunoColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblCantidadAlmuerzosColaborador" runat="server" Text="Cantidad de almuerzos"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtCantidadAlmuerzoColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblCantidadCenasColaborador" runat="server" Text="Cantidad de cenas"></asp:Label>
                   </p>
                    <p  align="center">
                         <asp:TextBox ID="txtCantidadCenaColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                   </p>
                </td>
           </tr>
            <tr>
                <td >
                    <p align="center">
                         <asp:Label ID="Label1" runat="server" Text="Cantidad de pasajes"></asp:Label>
                   </p>
                    <p  align="center">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="txtFormulario"></asp:TextBox>
                   </p>
                </td>
                <td>
                    <p align="center">
                         &nbsp;</p>
                    <p  align="center">
                         &nbsp;</p>
                </td>
           </tr>
            <tr>
                <td colspan="3" >
                   <h3 align="center"> Montos del colaborador</h3>
               </td>
           </tr>
            <tr>
                <td >
                     <p align="center">
                         <asp:Label ID="lblMontoDesayunoColaborador" runat="server" Text="Monto de desayunos"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoDesayunoColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblMontoAlmuerzoColaborador" runat="server" Text="Monto de almuerzos"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoAlmuerzoColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
               </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblMontoCenaColaborador" runat="server" Text="Monto de cenas"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoCenaColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
           </tr>
            <tr>
                <td >
                     <p align="center">
                         <asp:Label ID="lblMontoPasajesColaborador" runat="server" Text="Monto de pasajes"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoPasajeColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
                <td>
                     <p align="center">
                         <asp:Label ID="lblMontoHospedajeColaborador" runat="server" Text="Monto de hospedajes"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtMontoHospedajeColaborador" runat="server" CssClass="txtFormulario"></asp:TextBox>
                    </p>
                </td>
                <td>

                </td>

           </tr>
            <tr>
                <td colspan="3" >
                        <p  align="center">
                        <br />

                       </p>
                        <p align="center">
                           <asp:Button ID="btnAgregarColaborador" runat="server" Text="Agregar Colaborador" CssClass="boton" Height="35px" OnClick="btnAgregarColaborador_Click" />
                       </p>   
                </td>
           </tr>
            <tr>
                <td colspan="3" >
                        <p align="right">
                           <asp:Button ID="btnEnviarSolicitud" runat="server" Text="Enviar solicitud" Height="35px" OnClick="btnEnviarSolicitud_Click" CssClass="boton2" />
                       </p>
                                             <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
               </td>

           </tr>
       </table>
    </div>
</form>
</body>
</html>
