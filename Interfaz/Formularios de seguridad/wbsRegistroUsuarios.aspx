<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wbsRegistroUsuarios.aspx.cs" Inherits="Control_de_viaticos.Formularios_de_seguridad.wbsRegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 230px;
            height: 43px;
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
            cursor: pointer;
            background-color: #012440;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link href="../Estilos/estilosboton.css" rel="stylesheet" />
        <link href="../Estilos/estilostxt.css" rel="stylesheet" />
     <div>
        <table style="width: 100%;">
           
           <tr>
                <td><asp:Button ID="btnVolver" runat="server" Text="Volver" Height="34px" Width="77px" OnClick="btnVolver_Click" CssClass="boton" />
                    <h1 align="center">Registro de usuarios</h1>
               </td>
           </tr>
           
            <tr>
                <td>     
                   
                 <h3 align="center">Datos de usuario</h3>
                   
           
                   
               </td>

           </tr>
              
          
              
           
            <tr>
                <td>     
                      <p align="center">
                         <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="txtFormulario" MaxLength="30"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreUsuario" Display="Dynamic" ErrorMessage="Debe llenar el nombre de usuario" ForeColor="#FF6600">*</asp:RequiredFieldValidator>
                    </p>
                   
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtContraseña" runat="server" CssClass="txtFormulario" MaxLength="30" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContraseña" Display="Dynamic" ErrorMessage="Debe llenar la contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
                   
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblRepetirContraseña" runat="server" Text="Repetir contraseña"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtRepetirContraseña" runat="server" CssClass="txtFormulario" MaxLength="30" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRepetirContraseña" Display="Dynamic" ErrorMessage="Debe llenar la repeticion de la contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRepetirContraseña" ControlToValidate="txtContraseña" Display="Dynamic" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red">*</asp:CompareValidator>
                    </p>
                   
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblRolUsuario" runat="server" Text="Rol de usuario"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:DropDownList ID="cmbRol" runat="server" CssClass="txtFormulario"></asp:DropDownList>
                    </p>
                   
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <h3 align="center">Datos personales</h3>
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtNombre" runat="server" CssClass="txtFormulario" MaxLength="125"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Debe llenar el nombre" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
                   
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer apellido"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="txtFormulario" MaxLength="125"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrimerApellido" Display="Dynamic" ErrorMessage="Debe llenar el primer apellido" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
                   
                </td>

           </tr>
     
          
              
           
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo apellido"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtSegundoApellido" runat="server" CssClass="txtFormulario" MaxLength="125"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSegundoApellido" Display="Dynamic" ErrorMessage="Debe llenar el segundo apellido" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </p>
                   
                </td>

           </tr>
     <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtCorreo" runat="server" CssClass="txtFormulario" MaxLength="125"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Debe llenar el correo" ForeColor="Red">*</asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="El formato del correo esta incorrecto" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">ejemplo:hola@hotmail.com</asp:RegularExpressionValidator>
                    </p>
                   
                </td>

           </tr>
            <tr>
                <td>     
                     <p align="center">
                         <asp:Label ID="Label1" runat="server" Text="Codigo Persona"></asp:Label>
                    </p>
                     <p  align="center">
                         <asp:TextBox ID="txtIdPersona" runat="server" CssClass="txtFormulario"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtIdPersona" Display="Dynamic" ErrorMessage="Debe llenar el codigo de persona" ForeColor="Red">*</asp:RequiredFieldValidator>

                        
                         <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdPersona" Display="Dynamic" ErrorMessage="codigo de persona solo debe llenarce con numeros y con rango del 1 al 1000 " ForeColor="Red" MaximumValue="1000" MinimumValue="1" Type="Integer">*</asp:RangeValidator>

                        
                    </p>

                   
                </td>

           </tr>
            <tr>
                <td>
                 <p align="center">
                         
                           <asp:Button ID="btnRegistrarUsuario" runat="server" Text="Registrar usuario" Height="35px" OnClick="btnRegistrarUsuario_Click" CssClass="auto-style1" />
                    </p>  
                     <asp:ValidationSummary ID="ValidationSummary2" runat="server" /> 
                </td>
           
           </tr>
              
          
              
           
            </table>
    </div>
    </form>
</body>
</html>
