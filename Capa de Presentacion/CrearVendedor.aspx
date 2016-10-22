<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="CrearVendedor.aspx.cs" Inherits="Capa_de_Presentacion.MantenedorVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 155px;
        }
        .auto-style4 {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Rut</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequRut" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="ValNumRut" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) Debe ingresar rut sin puntos, ni guiones, ni digito verificador." ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Nombres&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequNombres" runat="server" ControlToValidate="txtNombre" ErrorMessage="(*)Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Apellido Paterno</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtApPaterno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequApPaterno" runat="server" ControlToValidate="txtApMaterno" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Apellido Materno</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtApMaterno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequApMaterno" runat="server" ControlToValidate="txtApMaterno" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Direccion</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Correo</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Telefono</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ValRequTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:CompareValidator ID="ValNumTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Telefono debe ser númerico" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnCrear" runat="server" Text="Crear Vendedor" OnClick="btnCrear_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                &nbsp;
                </td>
        </tr>
    </table>
</asp:Content>
